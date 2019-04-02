<?php namespace Modules\Admin\Models;


use Illuminate\Database\Eloquent\Model;

class Media extends Model
{
  protected $table = 'attachment';
  protected $fillable = ['obj_id', 'guid','type','mime_type'];
}