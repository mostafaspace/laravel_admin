<?php namespace Modules\Admin\Http\Controllers;

use Illuminate\Support\Facades\Input;
use Modules\Admin\Models\Media;
use Modules\Admin\Models\Post;
use Modules\Admin\Models\PostTranslation;
use Modules\Admin\Models\PostCategory;
use Modules\Admin\Models\Category;
use Modules\Admin\Models\Language;

use Modules\Admin\Http\Requests\PostRequest;
use Modules\Admin\Http\Requests\DeleteRequest;

class PostController extends AdminController {

    /**
     * @var
     */
    private $post, $post_translations, $language, $post_type, $current_lang, $language_available, $language_icon;
    private $post_type_array = ['post', 'page', 'achievements', 'slider', 'gallery', 'why_us'];

    public function __construct()
    {
        parent::__construct();
        $this->post_type = \Request::get('post_type');
        if(!in_array($this->post_type, $this->post_type_array)) {
            return view('admin::errors.invalid_post_type');
        }
        $this->language = Language::select(['name', 'locale', 'icon'])->get();
        $this->language_available = array_pluck($this->language, 'locale');
        $this->language_icon = array_pluck($this->language, 'icon');

        $this->checkLang();
    }


    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getPost(){
        $data['post_type'] = $this->post_type;
        $data['language_icon']      = $this->language_icon;
        $data['language_available'] = $this->language_available;
        return view('admin::sections.posts.index', $data);
    }


    public function getAddPost(){
        $lang = $this->current_lang;
        $id   = e(\Request::get('id'));

        if($lang && $id ) {
            $post = Post::whereHas('translations', function ($query) use($lang, $id) {
                $query->where('locale', $lang)->where('post_id', $id);
            })->first();

            if($post) {
                return redirect()->route('admin.post.edit.get', [$id, "lang=$lang" ]);
            }

            //$post = Post::find($id);
            $action = 'add_translate';

        } else {
            $action = 'add';
        }

        $category =  Category::all();
        $post_type            = $this->post_type;
        $language_icon        = $this->language_icon;
        $language_available   = $this->language_available;
        $language             = $this->language;
        $current_lang         = $this->current_lang;

//        return($post);
        return view('admin::sections.posts.create_edit', compact('post_type', 'language_icon', 'language_available', 'category', 'language', 'current_lang', 'post', 'action'));
    }


    public function postAddPost(PostRequest $request) {
//        $current_lang = $request->get('current_lang');
        $id = intval($request->get('id'));
        $return = ($id != null) ? $this->processForm($request, $id): $this->processForm($request);

        if ($return > 0) {
	        \Session::flash('success', 'Successfully deleted.');
            return redirect()->route('admin.posts.edit.get' , [$return, 'post_type='.$this->post_type, 'lang='.$this->current_lang ]);
        } else {
	        \Session::flash('failed', 'Failed!');
            return view('admin::errors.failed');
            //\Session::flash('failed', 'Failed!');
        }
    }


    public function getEditPost($id)
    {
        $language = $this->language;
        $current_lang = $this->current_lang;
        $post = Post::find($id);

        if(!$post) {
            return view('errors.404');
        }

        // check if not found record for this locale
        $post_translate = $post->translate($current_lang);

        if( !$post_translate) {
            return view('errors.404');
        }

        //$tags     = implode(',', $post->tagNames());

        $action = 'edit';

//        $categories_ids = Post::join('post_category', 'posts.id', '=', 'post_category.category_id')
//            ->select(['posts.id as id'])
//            ->where('post_id', $id)
//            ->lists('id')
//            ->toArray();
//        $language           = $this->language;
//        $current_lang       = $this->current_lang;
//        $language_icon      = $this->language_icon;
//        $language_available = $this->language_available;
//        $category           =  Category::all();

        $post_type           = $this->post_type;
        return view('admin::sections.posts.create_edit', compact('post_type', 'post', 'category', 'categories_ids', 'language_icon', 'language_available', 'language', 'current_lang', 'action'));

    }


    public function postEditPost(PostRequest $request ,$id)
    {
        if($this->processForm($request, $id)) {
            \Session::flash('success', 'Successfully updated.');
        } else {
            \Session::flash('failed', 'Failed!');
        }
        return redirect()->back();
    }


    public function getDeletePost($id) {
        $post = Post::find($id);
        $post_type = $this->post_type;

        if(!$post) {
            return view('errors.404');
        }
        return view('admin::sections.posts.delete', compact('post', 'post_type'));
    }


    public function postDeletePost(DeleteRequest $request, $id) {
        $post_type = $this->post_type;
        if(Post::find($request->id)->delete()) {
	        \Session::flash('success', 'Successfully deleted.');
            return redirect()->route('admin.posts.get','post_type='.$post_type);
        }
		\Session::flash('failed', 'Failed!');
        return view('admin::errors.failed');
    }

    protected function processForm($request , $id = null )
    {
        $post = ($id == null) ? new Post : Post::find($id);
        $post_trans = new PostTranslation;

        //$post->slug = ($id == null) ? getUniqueSlug($post, $request->get('post_title')) : $post->slug = getUniqueSlug($post, $request->get('slug'));

        $post->post_type = $this->post_type ;

        if($request->get('publish') !== null) {
            $post->post_status = 'publish';
        } elseif($request->get('draft') !== null) {
            $post->post_status = 'draft';
        } else {
            $post->post_status = 'trash';
        }
        $post->post_author    = \Auth::user()->id ;

        $post->save();

        $locale = trim($request->get('locale')) ; 
        $post->translateOrNew($locale)->slug           = empty($request->get('slug')) ? getUniqueSlug($post_trans, $request->get('post_title')) : getUniqueSlug($post_trans, $request->get('slug'));
        $post->translateOrNew($locale)->post_title     = trim($request->get('post_title')) ;
        $post->translateOrNew($locale)->post_excerpt   = trim($request->get('post_excerpt')) ;
        $post->translateOrNew($locale)->post_content   = trim($request->get('post_content')) ;
        //$post->translateOrNew($locale)->comment_status = 'open' ;


        /*============== Featured Image section Start ===============*/
//        $file = "";
//        if($request->hasFile('file'))
//        {
//            $file           = Input::file('file');
//            $filename       = $file->getClientOriginalName();
//            $extension      = $file->getClientOriginalExtension();
//            $size           = $file->getSize();
//            $mimeType       = $file->getMimeType();
//            $hash_name       = sha1($filename . time()) . '.' . $extension;
//
//            if(strstr($mimeType, "image/")){
//                $meta = $this->images($size, $post_type, $file, $hash_name);
//            }else {
//                $meta = '';
//            }
//
//            $media = $id == null ? new Media : Media::find($id);
//            $media->guid          = $hash_name;
//            $media->type          = $post_type;
//            $media->name          = $filename;
//            $media->mime_type     = $mimeType;
//            $media->meta          = json_encode($meta);
//
//            if($media->save()) {
//                $media_id = ['number' => $media->id, 'guid' => $media->guid];
//            } else {
//                $media_id = null;
//            }
//
//        }
        /*============== Featured Image section End ================*/


        /*============== Tags section Start ===============*/
//        if($request->has('tags')) {
//            /****************************************
//            * first check if there were tags before *
//            * if there then use retag               *
//            * if there no then use tag              *
//            *****************************************/
//            if (count($post->tagNames()) > 0 ) {
//                $post->retag(explode(',', $request->tags));
//            } else {
//                    $post->tag(explode(',', $request->tags));
//            }
//        }
//
//        if(!$request->has('tags') && (count($post->tagNames()) > 0 )) {
//            $post->untag(); // remove all tags
//        }
        /*============== Tags section End ===============*/


        if($post->save()) {

            /*=========== Instructor Section Start ============*/

            if(Input::has('category') && count($request->get('category')) ) {

                PostCategory::where('post_id', $post->id)->delete();

                foreach ($request->get('category') as $category_id) {
                    PostCategory::create([
                        'post_id'     => $post->id,
                        'category_id' => $category_id,
                    ]);
                }
            }

            /*=========== Instructor Section End   ============*/



            return $post->id;
        } else {
            return false;
        }

    }



    /**
     * @param $size
     * @param $post_type
     * @param $file
     * @param $hash_name
     * @return array
     */
    protected function images($size, $post_type, $file, $hash_name)
    {
        $meta = [
            'size' => $size,
            'dimensions' => [
                'large' => ['width' => trim(post_dimensions($post_type, 'large', 'width')), 'height' => trim(post_dimensions($post_type, 'large', 'height'))],
                'medium' => ['width' => trim(post_dimensions($post_type, 'medium', 'width')), 'height' => trim(post_dimensions($post_type, 'medium', 'height'))],
                'thumbnail' => ['width' => trim(post_dimensions($post_type, 'thumbnail', 'width')), 'height' => trim(post_dimensions($post_type, 'thumbnail', 'height'))]
            ]
        ];

        $destinationFullPath = base_path('public') . '/uploads/full/';
        $destinationLargePath = base_path('public') . '/uploads/large/';
        $destinationMediumPath = base_path('public') . '/uploads/medium/';
        $destinationThumbnailPath = base_path('public') . '/uploads/thumbnail/';

        $file->move($destinationFullPath, $hash_name);

        $imgPath = $destinationFullPath . $hash_name;

        /* Large image */
        $img1 = \Image::make($imgPath)->resize(trim(post_dimensions($post_type, 'large', 'width')), trim(post_dimensions($post_type, 'large', 'height')))->save($destinationLargePath . $hash_name);

        /* Medium image */
        $img2 = \Image::make($imgPath)->resize(trim(post_dimensions($post_type, 'medium', 'width')), trim(post_dimensions($post_type, 'medium', 'height')))->save($destinationMediumPath . $hash_name);

        /* thumb image */
        $img3 = \Image::make($imgPath)->fit(trim(post_dimensions($post_type, 'thumbnail', 'width')), trim(post_dimensions($post_type, 'thumbnail', 'height')))->save($destinationThumbnailPath . $hash_name);

        return $meta;
    }


    public function getPostsData($post_status = 'publish'){

        $lang  = \Session::get('lang');
        $post_type = $this->post_type;
        $languages = $this->language_available;
//        $lang  = $this->current_lang != null  ? $this->current_lang : 'all';

        $posts = PostTranslation::join('posts', 'posts.id', '=', 'posts_translations.post_id')
            ->where('posts.post_type', $post_type)
            ->where('posts.post_status', $post_status)
            ->select([
                'posts_translations.post_title as post_title',
                'posts_translations.locale as locale',
                'posts_translations.post_id as post_id',
                'posts_translations.slug as slug',
                'posts.post_type as post_type',
                'posts.id as id',
            ])
            ->where(function($query) use($lang)
            {
                if($lang == 'all') {
                    $query->whereIn('posts_translations.locale', $this->language_available);
                } else {
                    $query->where('posts_translations.locale', $lang);
                }

            })
            ->orderby('posts.id', 'DESC');

        $datatables =  app('datatables')->of($posts);

        foreach ($this->language_available as $l) {
            $datatables ->addColumn($l, function ($post) use ($l) {

                $p = PostTranslation::where('post_id', $post->post_id)
                    ->where('locale', $l)
                    ->get();

                if($p){
	                $icon = $post->locale == $l ? 'ok' :  'pencil';
                    return '<a target="_blank" href="'. route('admin.posts.edit.get', [$post->id, 'post_type='.$post->post_type, 'lang='.$l]) .'"><span class="glyphicon glyphicon-'. $icon .'"></span></a>';
                } else {
                    return '<a target="_blank" href="'. route('admin.posts.add.get', ['id='.$post->id, 'post_type='.$post->post_type, 'lang='.$l]) .'"><span class="glyphicon glyphicon-plus"></span></a>';
                }
            });
        }

        $datatables ->editColumn('post_title', function ($post) {
            return '<a href="'. route('admin.posts.edit.get' , [$post->id, 'post_type='.$post->post_type]) .'"><i class="fa fa-edit"></i> &nbsp;'. $post->post_title .'</a>';
        });

        $datatables ->addColumn('action', function ($post) {
            return '<a class="btn btn-danger btn-sm" href="'. route('admin.posts.delete.post' , [$post->id, 'post_type='.$post->post_type]) .'"><i class="fa fa-trash"></i>delete</a>';
        });
	    $datatables->escapeColumns([]);
        return  $datatables->make(true);

    }
    
    /**
     * @param $post_type
     * @return mixed
     */
    protected function checkPostType($post_type){
        if(!in_array($post_type, $this->post_type_array)) {
            return view('admin::errors.invalid_post_type');
        }
        return true;
    }

    /**
     * Check if url have lang param.
     *
     * @return void
     */
    protected function checkLang(){
        $this->current_lang = \Request::get('lang') !== null ? e(\Request::get('lang')) : 'en';
        if(!in_array($this->current_lang, $this->language_available)) {
            abort(404);
        }
    }
}