<?php

use Illuminate\Support\Facades\Route;
use App\Mail\WelcomeMail;
use Illuminate\Support\Facades\Mail;

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

// Route::get('/', function () {
//     return view('welcome');
// });

// //email
// Route::get('/email', function () {
// 	Mail::to('dinhlanh9999@gmail.com')->send(new WelcomeMail());
//     return new WelcomeMail();
// });

Route::group([
    'prefix' => 'admin',
    'middleware' =>'auth'
], function (){
	Route::resource('users','UsersController');
	// Route::get('/hello_world','HelloWorldController@show')->name('hello_world.show');
	// Route::get('/index_users','UsersController@index')->name('user.index');
	// Route::get('/create_users','UsersController@create')->name('user.create');
	// Route::post('users','UsersController@store')->name('user.store');
	// Route::get('users/delete/{id}','UsersController@delete')->name('users.delete');
	Route::get('/search','UsersController@search')->name('users.search');
	Route::get('/dashboard','UsersController@dashboard')->name('users.dashboard');
	Route::get('test', function(){
		toUpperCase::sayHello();
	});
});

//login
Route::get('admin/login', 'Auth\LoginController@showLoginForm')->name('login.form');
Route::post('admin/login', 'Auth\LoginController@login')->name('login.store');

Route::get('admin/register', 'Auth\RegisterController@showRegistrationForm')->name('register.form');
Route::post('admin/register', 'Auth\RegisterController@register')->name('register.store');

//logout
Route::get('logout','Auth\LoginController@logout')->name('logout');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
