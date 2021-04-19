<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Article;
use App\CategoriesBasDePage;
use App\SocialNetwork;
use App\ALaUne;
use App\AgripreneurDuMoi;
use App\EspacePublicitaire;
use App\Models\User;

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
    $articles_populaires = Article::where([['publier','=',1]])->orderBy('vues','desc')->take(5)->get();
    //Details Article
    $article = Article::where('slug',$slug)->first();
    //Espace publicitaire
    $espace_publicitaire =  EspacePublicitaire::where([['publier','=',1]])->orderBy('id','desc')->first();
    $article->vues = $article->vues + 1;
    $article->save();
    return view('article.details')->with(['reseaux_sociaux'=> $reseaux_sociaux,'cat_header'=>$cat_header,
    'articles_populaires'=>$articles_populaires,'article' => $article,'espace_publicitaire'=>$espace_publicitaire]);
    }

   public function liste_par_categorie($slug){
    //Reseaux sociaux
    $reseaux_sociaux = SocialNetwork::orderBy('id','desc')->first();
    //Categorie header
    $cat_header = Category::orderBy('nom','asc')->get();
    //Articles populaire
    $articles_populaires = Article::where([['publier','=',1]])->orderBy('vues','desc')->take(5)->get();
    //Details Article
    $categorie = Category::where('slug',$slug)->first();
    //Espace publicitaire
    $espace_publicitaire =  EspacePublicitaire::where([['publier','=',1]])->orderBy('id','desc')->first();
    //Liste des articles
    $articles=Article::orderBy('vues','desc')->where([['categorie_id','=',$categorie->id]])->paginate(8);
    return view('article.liste_par_categorie')->with(['reseaux_sociaux'=> $reseaux_sociaux,'cat_header'=>$cat_header,
    'articles_populaires'=>$articles_populaires,'categorie'=>$categorie,'articles'=>$articles,'espace_publicitaire'=>$espace_publicitaire]);
   }

   
   public function recherche(Request $request){
    //Reseaux sociaux
    $categorie = Category::where('nom', 'like' ,'%' . $request->search. '%')->first();
    $article = Article::where('nom', 'like','%' . $request->search. '%')->first();
    if ($categorie) {
        return redirect()->route('article_par_categorie', ['slug' => $categorie->slug]);
    }
    elseif ($article){
        return redirect()->route('details_article', ['slug' => $article->slug]);
     }else{
        return redirect()->route('home');
    }
    }
}
