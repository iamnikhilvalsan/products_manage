<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RoleController;
Auth::routes();
// Products Manage


Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('');

Route::group(['middleware' => ['auth']], function() {
    Route::get('/admin', [App\Http\Controllers\HomeController::class, 'index'])->name('admin');
    Route::get('/view-products', [ProductsController::class, 'view_products'])->name('view-products');
    Route::post('/save-products', [ProductsController::class, 'add_products_save'])->name('save-products');
    Route::post('/delete-products', [ProductsController::class, 'products_delete'])->name('delete-products');
    Route::post('/fetch-product', [ProductsController::class, 'fetch_product'])->name('fetch-product');

    Route::post('import', [ProductsController::class, 'import'])->name('import');
    

});