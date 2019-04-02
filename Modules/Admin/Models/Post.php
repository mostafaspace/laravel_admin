<?php namespace Modules\Admin\Models;


use Illuminate\Database\Eloquent\Model;
use Dimsav\Translatable\Translatable;

/**
 * @property mixed post_img
 */
class Post extends Model
{
  use Translatable;

  protected $table = 'posts';

  protected $dates = ['created_at'];

  public $useTranslationFallback = true;

  public $translatedAttributes = [
      'post_title',
      'post_excerpt',
      'post_content',
      'post_img',
      'dimensions',
      'comment_status',
      'comment_count',
      'extra'
  ];

  protected $fillable = [
      'post_type',
      'slug',
      'start_date',
      'end_date',
      'location',
      'menu_order',
      'post_status',
      'post_title',
      'post_excerpt',
      'post_content',
      'post_img',
      'dimensions',
      'post_author',
      'comment_status',
      'comment_count',
      'extra'
  ];

//    public function courses()
//    {
//        return $this->belongsToMany('Modules\Admin\Models\Course');
//    }

  public function category()
  {
    return $this->belongsToMany('Modules\Admin\Models\Category', 'post_category', 'post_id', 'category_id');
  }

  public function post_have_thumbnail()
  {
    $post_img = $this->post_img;
    if($post_img == null || $post_img == '') {
      return false;
    } else {
      return true;
    }
  }

  /* =========== Images ========== */
  public function get_full_image()
  {
    $img_path      = url('/public/uploads/full/' . $this->post_img );
    echo '<img class="img-responsive" src="'. $img_path .'">';
  }


  public function get_large_image()
  {
    $img_path      = url('/public/uploads/large/' . $this->post_img );
    echo '<img class="img-responsive" src="'. $img_path .'">';
  }

  public function get_medium_image()
  {
    $img_path      = url('/public/uploads/medium/' . $this->post_img );
    echo '<img class="img-responsive" src="'. $img_path .'">';
  }

  public function get_thumbnail_image()
  {
    $img_path      = url('/public/uploads/thumbnail/' . $this->post_img );
    echo '<img class="img-responsive" src="'. $img_path .'">';
  }

  /* =========== Images Links ========== */

  public function get_full_image_url()
  {
    $img_path = url('/public/uploads/full/' . $this->post_img );
    return $img_path;
  }

  public function get_large_image_url()
  {
    $img_path = url('/public/uploads/large/' . $this->post_img );
    return $img_path;
  }

  public function get_medium_image_url()
  {
    $img_path = url('/public/uploads/medium/' . $this->post_img );
    return $img_path;
  }

  public function get_thumbnail_image_url()
  {
    $img_path = url('/public/uploads/thumbnail/' . $this->post_img );
    return $img_path;
  }

  public function sliderPosts(){
    return $this->hasMany('Modules\Admin\Models\Media','obj_id');
  }
}