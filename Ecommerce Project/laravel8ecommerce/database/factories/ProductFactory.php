<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str; //Add this

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        //For dummy records for product
        $product_name = $this->faker->unique()->words($nb=4,$asText=true); //number of words 4.
        $slug = Str::slug($product_name);
        return [
            'name' =>  $product_name,
            'slug' =>  $slug,
            'short_description' => $this->faker->text(200),
            'description' => $this->faker->text(500),
            'regular_price' => $this->faker->numberBetween(10,500),
            // 'sale_price' => $this->faker->numberBetween(10,500),
            'SKU' => 'DIGI'.$this->faker->unique()->numberBetween(100,500), //DIGI name used for SKU(Stock Keeping Unit) for eg: DIGI288
            'stock_status' => 'instock',
            // 'featured' => $this->faker->text(500),
            'quantity' => $this->faker->numberBetween(10,200),
            'image' => 'digital_' . $this->faker->unique()->numberBetween(1,22).'.jpg', // In public\assets\images\products\ we have 22 digital_ images and its extension i.e .jpg
            'category_id' =>$this->faker->numberBetween(1,5)
        ];
    }
}
