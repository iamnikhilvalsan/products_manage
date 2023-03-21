<?php
  
namespace App\Imports;
  
use App\Models\ProductsModel;
use App\Models\CategoryModel;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
  
class productImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        if($row['product_name']!='' && $row['price']!='' && $row['category']!='')
        {
            $category = $row['category'];
            $CData = CategoryModel::select('category_id')->where('category', $category)->first();

            if(!empty($CData))
            {
                $ProductCode = generateProductCode();

                return new ProductsModel([
                    'category_id'=> $CData->category_id,
                    'product_code'=> $ProductCode,
                    'products'     => $row['product_name'],
                    'price'    =>  floatval( $row['price'] ), 
                ]);
            }
        }
    }
}