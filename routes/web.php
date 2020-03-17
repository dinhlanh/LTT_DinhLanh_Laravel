<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group([
    'prefix' => 'admin',
    // 'middleware' =>'auth'
], function (){
	Route::resource('users','UsersController');
	// Route::get('/hello_world','HelloWorldController@show')->name('hello_world.show');
	// Route::get('/index_users','UsersController@index')->name('user.index');
	// Route::get('/create_users','UsersController@create')->name('user.create');
	// Route::post('users','UsersController@store')->name('user.store');
	// Route::get('users/delete/{id}','UsersController@delete')->name('users.delete');
	Route::get('/search','UsersController@search')->name('users.search');
	Route::get('/dashboard','UsersController@dashboard')->name('dashboard');
	Route::get('test', function(){
		toUpperCase::sayHello();
	});
});
