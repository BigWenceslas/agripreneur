<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Menu1Site extends Model
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
    
}
