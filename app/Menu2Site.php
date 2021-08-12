<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Menu2Site extends Model
{
    public function getCategorie_1()
    {
        return $this->belongsTo(Category::class,'categorie_1');
    }

    
    public function getCategorie_2()
    {
        return $this->belongsTo(Category::class,'categorie_2');
    }

    
    public function getCategorie_3()
    {
        return $this->belongsTo(Category::class,'categorie_3');
    }

    
    public function getCategorie_4()
    {
        return $this->belongsTo(Category::class,'categorie_4');
    }

    
    public function getCategorie_5()
    {
        return $this->belongsTo(Category::class,'categorie_5');
    }

    
    public function getCategorie_6()
    {
        return $this->belongsTo(Category::class,'categorie_6');
    }

    public function getCategorie_7()
    {
        return $this->belongsTo(Category::class,'categorie_7');
    }

    
    public function getCategorie_8()
    {
        return $this->belongsTo(Category::class,'categorie_8');
    }

    
    public function getCategorie_9()
    {
        return $this->belongsTo(Category::class,'categorie_9');
    }
}
