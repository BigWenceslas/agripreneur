<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class CategoriesBasDePage extends Model
{
    public function bas_bloc1()
    {
        return $this->belongsTo(Category::class,'categorie1');
    }
    
    public function bas_bloc2()
    {
        return $this->belongsTo(Category::class,'categorie2');
    }

    public function bas_bloc3()
    {
        return $this->belongsTo(Category::class,'categorie3');
    }
}
