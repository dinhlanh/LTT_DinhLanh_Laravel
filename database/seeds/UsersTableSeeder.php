<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\QueryException;
use App\Models\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Facetory
        factory(User::class, 100)->create();
    }
}
