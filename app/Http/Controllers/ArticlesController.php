<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ArticlesController extends Controller
{
    public function index(){

    return view('article.index');
    }

    public function details(){
    return view('article.details');
    }

   public function liste_par_categorie(){

    return view('article.liste_par_categorie');
   }
}
