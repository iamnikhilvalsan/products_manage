<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ProductController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//API route for register new user
// Route::post('/register', [App\Http\Controllers\API\AuthController::class, 'register']);
//API route for login user
Route::post('/login', [App\Http\Controllers\API\AuthController::class, 'login']);

//Protecting Routes
Route::middleware('auth:sanctum')->group(function () {
   Route::post('/view-products', [ProductController::class, 'view_product']);
});


// Route::group(['middleware' => ['auth:sanctum']], function () {
//     // Route::get('/profile', function(Request $request) {
//     //     return auth()->user();
//     // });
//         Route::post('/view-products', [ProductController::class, 'view_product']);

//         // Route::post('/view-products', [ProductController::class, 'view']);


//     // API route for logout user
//     Route::post('/logout', [App\Http\Controllers\API\AuthController::class, 'logout']);
// });
