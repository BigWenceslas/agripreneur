<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;


class Article extends Model
{
    public function category()
    {
        return $this->belongsTo(Category::class,'categorie_id');
    }

    public function auteur()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
