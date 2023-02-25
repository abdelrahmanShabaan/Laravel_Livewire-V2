<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title'     => $this->faker->sentence,
            'slug'      => $this->faker->slug,
            'body'      => $this->faker->paragraph,
            'image'     => $this->faker->image(public_path('images'), 640, 640, null, false, true),
            'user_id'   => User::inRandomOrder()->first()->id,
        ];
    }
}