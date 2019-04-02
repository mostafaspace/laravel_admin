<?php namespace Modules\Admin\Models;


use Illuminate\Database\Eloquent\Model;
use Dimsav\Translatable\Translatable;

class Category extends Model
{
  use Translatable;

  protected $table = 'category';
  public $useTranslationFallback = true;

  public $translatedAttributes = ['name'];

  protected $fillable = ['slug', 'parent'];

}