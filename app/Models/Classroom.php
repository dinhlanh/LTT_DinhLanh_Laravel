<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Classroom extends Model
{
    //
    protected $table = 'classrooms';
    public $timestamps = true;

    public function users(){
    	return $this->hasMany('App\Models\User','classroom_id','id');
    }
}
