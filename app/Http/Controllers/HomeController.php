<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Article;
use App\CategoriesBasDePage;
use App\SocialNetwork;

class HomeController extends Controller
{
    public function homepage(){
        //Categorie header
        $cat_header = Category::orderBy('nom','asc')->get();

        //articles recents;
        $articles_recents = Article::where([['publier','=',1]])->orderBy('created_at','desc')->take(5)->get();
        $page_articles_recents = 2;
        //A la une

        //Agripreneur du mois

        //Agripreneur TV

        //Articles populaire
        $articles_populaires = Article::where([['publier','=',1]])->orderBy('vues','desc')->take(12)->get();
        //Categories bas de page
        $cat_bas_page = CategoriesBasDePage::orderBy('id','desc')->first();
        $bas_bloc1=[];$bas_bloc2=[];$bas_bloc3=[];
        if ($cat_bas_page) {
           $bas_bloc1 = Article::where([['categorie_id','=',$cat_bas_page->categorie1],['publier','=',1]])->orderBy('created_at','desc')->take(3)->get();
           $bas_bloc2 = Article::where([['categorie_id',$cat_bas_page->categorie2],['publier','=',1]])->orderBy('created_at','desc')->take(3)->get();
           $bas_bloc3 = Article::where([['categorie_id',$cat_bas_page->categorie3],['publier','=',1]])->orderBy('created_at','desc')->take(3)->get();
        }
        //dd($bas_bloc1);
        //Reseaux sociaux
        $reseaux_sociaux = SocialNetwork::orderBy('id','desc')->first();
        //dd($cat_header);
        return view('welcome')->with(['cat_header' => $cat_header,'reseaux_sociaux' => $reseaux_sociaux,
        'bas_bloc1'=>$bas_bloc1,'bas_bloc2'=>$bas_bloc2,'bas_bloc3'=>$bas_bloc3,'cat_bas_page'=>$cat_bas_page,
        'articles_populaires'=>$articles_populaires,'articles_recents' => $articles_recents,
        'page_articles_recents'=> $page_articles_recents]);
    }
}
