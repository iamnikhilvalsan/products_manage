<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;


class ProductsModel extends Model
{
     use HasApiTokens, HasFactory;

    protected $table = 'products';
    protected $primaryKey = 'products_id';

    protected $fillable = ['products','price','category_id','product_code','image'];

}
