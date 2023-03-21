<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Http\Controllers\Controller;
use App\Models\ProductsModel;
use Illuminate\Http\Request;

class ProductController extends BaseController
{

        public function view_product()
    {
    
    $data['products'] = ProductsModel::select('products.*', 'category.category')
    ->where('products_status','0')
    ->leftjoin('category', 'category.category_id', 'products.category_id')
    ->get()->toArray();
    return $this->sendResponse($data, 'success');
    
    }


}


