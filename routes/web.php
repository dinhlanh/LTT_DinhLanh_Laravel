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
Route::group([
    'prefix' => 'admin',
    'middleware' =>'auth'
	], function (){
	Route::resource('users','UsersController');
	Route::get('/search','UsersController@search')->name('users.search');
	Route::get('/dashboard','UsersController@dashboard')->name('users.dashboard');
	Route::get('test', function(){
		toUpperCase::sayHello();
	});
});

//login
Route::get('admin/login', 'Auth\LoginController@showLoginForm')->name('login.form');
Route::post('admin/login', 'Auth\LoginController@login')->name('login.store');

//logout
Route::get('logout','Auth\LoginController@logout')->name('logout');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
