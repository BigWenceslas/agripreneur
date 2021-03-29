<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Article;
use App\CategoriesBasDePage;
use App\SocialNetwork;
use App\ALaUne;
use App\AgripreneurDuMoi;

class ArticlesController extends Controller
{
    public function index(){

    return view('article.index');
    }

    public function details($slug){
    //Reseaux sociaux
    $reseaux_sociaux = SocialNetwork::orderBy('id','desc')->first();
    //Categorie header
    $cat_header = Category::orderBy('nom','asc')->get();
    //Articles populaire
    $articles_populaires = Article::where([['publier','=',1]])->orderBy('vues','desc')->take(12)->get();
    //Details Article
    $article = Article::where('slug',$slug)->first();
    return view('article.details')->with(['reseaux_sociaux'=> $reseaux_sociaux,'cat_header'=>$cat_header,
    'articles_populaires'=>$articles_populaires,'article' => $article]);
    }

   public function liste_par_categorie(){

    return view('article.liste_par_categorie');
   }
}
