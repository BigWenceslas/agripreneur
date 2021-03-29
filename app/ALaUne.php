<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ALaUne extends Model
{
    public function article_a_la_une()
    {
        return $this->belongsTo(Article::class,'article_id');
    }

    public function article1_bloc1()
    {
        return $this->belongsTo(Article::class,'article1_bloc1');
    }

    public function article2_bloc1()
    {
        return $this->belongsTo(Article::class,'article2_bloc1');
    }
    public function article1_bloc2()
    {
        return $this->belongsTo(Article::class,'article1_bloc2');
    }
    public function article2_bloc2()
    {
        return $this->belongsTo(Article::class,'article2_bloc2');
    }
}
