<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Category extends Model
{

    
    public function deployments()
    {
        return $this->hasMany(Article::class, 'categorie_id');
    }
}
