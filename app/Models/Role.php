<?php namespace App\Models;

// use Zizaco\Entrust\EntrustRole;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
	public function users(){
		return $this-belongsToMany('App\Models\User');
	}

}