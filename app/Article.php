<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Article extends Model
{
     /**
     * Get the post that owns the comment.
     */
    public function post()
    {
        return $this->belongsTo(Category::class);
    }
}
