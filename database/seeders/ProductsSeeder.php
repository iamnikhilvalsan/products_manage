<?php

// namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ProductsModel;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductsModel::create(['category_id' => '1', 'product_code' => 'QD32MPA1', 'products' => 'Branded Shirt 1', 'price' => '100.00', 'image' => 'RNy8aevRR4axt18XMXKDLiemRxDbZsUschu28qvi.png']);


        /*DB::table('products')->insert([
            ['category_id' => '1', 'product_code' => 'QD32MPA1', 'products' => 'Branded Shirt 1', 'price' => '100.00', 'image' => 'RNy8aevRR4axt18XMXKDLiemRxDbZsUschu28qvi.png'],
            ['category_id' => '1', 'product_code' => 'QD32MPA2', 'products' => 'Branded Shirt 2', 'price' => '100.00', 'image' => 'RNy8aevRR4axt18XMXKDLiemRxDbZsUschu28qvi.png'],
            ['category_id' => '1', 'product_code' => 'QD32MPA3', 'products' => 'Branded Shirt 3', 'price' => '100.00', 'image' => 'RNy8aevRR4axt18XMXKDLiemRxDbZsUschu28qvi.png'],
            ['category_id' => '1', 'product_code' => 'QD32MPA4', 'products' => 'Branded Shirt 4', 'price' => '100.00', 'image' => 'RNy8aevRR4axt18XMXKDLiemRxDbZsUschu28qvi.png'],
            ['category_id' => '1', 'product_code' => 'QD32MPA5', 'products' => 'Branded Shirt 5', 'price' => '100.00', 'image' => 'RNy8aevRR4axt18XMXKDLiemRxDbZsUschu28qvi.png'],
            // more products
        ]);*/
    }
}
