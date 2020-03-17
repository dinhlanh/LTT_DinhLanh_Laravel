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

        // for ($i = 0; $i < 20; $i++) {
        //     DB::table('users')->insert([
        //         'mail_address' => $i.'admin1@gmail.com',
        //         'password' => bcrypt('123456'),
        //         'name' => 'admin1',
	       //  	'address' => 'Hà Nội',
	       //  	'phone' => '0329970968',
	       //  	'role' => 1,
        //     ]);
        //     DB::table('users')->insert([
        //         'mail_address' => $i.'lanhdd99@gmail.com',
        //         'password' => bcrypt('123456'),
        //         'name' => 'admin',
	       //  	'address' => 'Hà Nội',
	       //  	'phone' => '0859981999',
	       //  	'role' => 0,
        //     ]);
        //     DB::table('users')->insert([
        //         'mail_address' => $i.'admin2@gmail.com',
        //         'password' => bcrypt('123456'),
        //         'name' => 'admin2',
	       //  	'address' => 'Hà Nội',
	       //  	'phone' => '0329970968',
	       //  	'role' => 1,
        //     ]);
        //     DB::table('users')->insert([
        //         'mail_address' => $i.'dinhlanh_lifetime@gmail.com',
        //         'password' => bcrypt('123456'),
        //         'name' => 'admin',
	       //  	'address' => 'Hà Nội',
	       //  	'phone' => '0329970968',
	       //  	'role' => 1,
        //     ]);
        //     DB::table('users')->insert([
        //         'mail_address' => $i.'admin3@gmail.com',
        //         'password' => bcrypt('123456'),
        //         'name' => 'admin3',
	       //  	'address' => 'Hải Phòng',
	       //  	'phone' => '0896652211',
	       //  	'role' => 0,
        //     ]);
        // }
    }
}
