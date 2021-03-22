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

Route::get('/','App\Http\Controllers\HomeController@homepage')->name('home');
//Articles
Route::get('/articles', 'App\Http\Controllers\ArticlesController@index')->name('articles');
Route::get('/articles/show', 'App\Http\Controllers\ArticlesController@details')->name('details_article');
Route::get('/articles/categorie/{slug}', 'App\Http\Controllers\ArticlesController@liste_par_categorie')->name('article_par_categorie');
//Fin Articles

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
