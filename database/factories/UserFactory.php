<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\User;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(User::class, function (Faker $faker) {
    return [
    	'mail_address' => $faker->unique()->safeEmail,
    	'password' => bcrypt(Str::random(10)), // password
        'name' => $faker->name,
        'address' => $faker->address,
        'phone' => $faker->phoneNumber,
        
        // 'email_verified_at' => now(),
        
        // 'remember_token' => Str::random(10),
    ];
});
