<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\CategoryModel;
use App\Models\ProductsModel;
use App\Imports\productImport;

use Maatwebsite\Excel\Facades\Excel;
use Image;

class ProductsController extends Controller
{
    function __construct()
    {
        /*$this->middleware('permission:product-list|product-create|product-edit|product-delete', ['only' => ['view_products','show']]);
        $this->middleware('permission:product-create', ['only' => ['create','store']]);
        $this->middleware('permission:product-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:product-delete', ['only' => ['destroy']]);*/
    }
    
    public function view_products()
    {
        $category = CategoryModel::where('category_status', '0')->orderBy('category', 'asc')->get();
        $products = ProductsModel::select('products.*', 'category.category')->where('products_status','0')->join('category', 'category.category_id', 'products.category_id', 'left')->get();

        return view('admin.view_products',compact('products','category'));
    }

    public function add_products_save(Request $request)
    {
        $validator = Validator::make($request->all(), ['category_id' => 'required|numeric', 'products' => 'required', 'price' => 'required|numeric']);

        if ($validator->fails())
        {
            return back()->withErrors($validator->errors())->withInput($request->all());
        }
        else
        {
            if($request->products_id!='' || $request->products_id!=null)
            {
                $Products    =   ProductsModel::where('products_id',$request->products_id)->first();
            }
            else
            {
                $Products    =   new ProductsModel();
                $Products->product_code = generateProductCode();
            }

            $Products->products_status = '0';
            $Products->category_id = $request->category_id;
            $Products->products = $request->products;
            $Products->price = $request->price;

            // title image upload
            if($request->file('image'))
            {
                $image = Image::make($request->file('image'));

                $imageName = time().'-'.$request->file('image')->getClientOriginalName();
                $destinationPath = public_path('uploads/products/');
                $image->save($destinationPath.$imageName);

                // creating thumnail
                $destinationPathThumbnail = public_path('uploads/products/thumbnail/');
                $image->resize(100,100);
                $image->save($destinationPathThumbnail.$imageName);
                $Products->image = $imageName;
            }
            // title image upload

            // multiple image upload
            if($request->file('images'))
            {
                $file = $request->file('images');
                $i = 0;
                foreach ($file as $files)
                {
                    $i++;
                    $path = $files->store('products', 'public_uploads');
                    $filename = str_replace('products/', '', $path);
                    

                    if($i==1)
                    {
                        $Products->image_1 = $filename;
                    }
                    else
                    {
                        $Products->image_2 = $filename; break;
                    }
                }
            }
            // multiple image upload

            $Products->save();

            if($request->products_id!='' || $request->products_id!=null)
            {
                return redirect()->route('view-products')->with('success','Products details updated successfully.');
            }
            else
            {
                return redirect()->route('view-products')->with('success','New Products added successfully.');
            }
        }
    }

    public function products_delete(Request $request)
    {
        $validator = Validator::make($request->all(),['delete_id' => 'required']);

        if ($validator->fails())
        {
            return back()->withErrors($validator->errors())->withInput($request->all());
        }
        else
        {
            ProductsModel::where('products_id',$request->delete_id)->update(['products_status' => '1']);
        }
        return redirect()->route('view-products')->with('success','Products details deleted successfully.');
    }

    public function fetch_product(Request $request)
    {
        $validator = Validator::make($request->all(),['products_id' => 'required']);

        if ($validator->fails())
        {
            return response()->json(['success' => false]);
        }
        else
        {
            $product = ProductsModel::select('*')->where('products_id', $request->products_id)->first();
            return response()->json(['success' => true, 'data'=>$product]);
        }
    }

    public function import() 
    {
        Excel::import(new productImport,request()->file('file'));
        return back()->with('success','Products details imported successfully.');
    }



}
