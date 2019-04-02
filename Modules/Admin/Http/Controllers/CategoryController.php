<?php namespace Modules\Admin\Http\Controllers;

use Modules\Admin\Models\Language;
use Modules\Admin\Models\Category;
use Modules\Admin\Models\CategoryTranslation;

use Modules\Admin\Http\Requests\CategoryRequest;
use Modules\Admin\Http\Requests\DeleteRequest;

class CategoryController extends AdminController {

    /**
     * @var
     */
    private $current_lang, $language, $language_available, $language_icon;

    public function __construct()
    {
        parent::__construct();

        $this->language = Language::select(['name', 'locale', 'icon'])->get();
        $this->language_available = array_pluck($this->language, 'locale');
        $this->language_icon = array_pluck($this->language, 'icon');
    }


    public function getAddCategory()
    {
        $this->checkLang();

        $lang = $this->current_lang;
        $id   = e(\Request::get('id'));

        if($lang && $id ) {

            $category = Category::whereHas('translations', function ($query) use($lang, $id) {
                $query->where('locale', $lang)->where('category_id', $id);
            })->first();

            if($category) {
                return redirect()->route('admin.category.edit.get', [$id, "lang=$lang" ]);
            }

            $category = Category::find($id);
            $action = 'add_translate';

        } else {
            $action = 'add';
        }

        $language           = $this->language;
        $current_lang       = $this->current_lang;
        $language_icon      = $this->language_icon;
        $language_available = $this->language_available;
        $categories = CategoryTranslation::join('category', 'category.id', '=', 'category_translations.category_id')
            ->select([
                'category_translations.name as name',
                'category_translations.locale as locale',
                'category.id as category_id',
                'category.slug as slug',
            ])
            ->where('category_translations.locale', '=', $current_lang)
            ->get();


        return view('admin::sections.category.create_edit', compact('language', 'language_icon', 'language_available', 'current_lang', 'category', 'action', 'categories'));
    }


    /**
     * @param CategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postAddCategory(CategoryRequest $request)
    {
        $current_lang = $request->get('current_lang');
        $id = intval($request->get('id'));

        $return = ($id != null) ? $this->processForm($request, $id): $this->processForm($request);

        if ($return > 0) {
            return redirect()->route('admin.category.edit.get', [$return, "lang=$current_lang" ]);
        } else {
            return view('admin::errors.failed');
            //\Session::flash('failed', 'Failed!');
        }
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getEditCategory($id)
    {

        $this->checkLang();

        $language = $this->language;
        $current_lang = $this->current_lang;
        $category = Category::find($id);

        if(!$category) {
            return view('errors.404');
        }

        // check if not found record for this locale
        $category_translate = $category->translate($current_lang);

        if( !$category_translate) {
            return view('errors.404');
        }
        $action = 'edit';

        $language           = $this->language;
        $current_lang       = $this->current_lang;
        $language_icon      = $this->language_icon;
        $language_available = $this->language_available;
        $categories = CategoryTranslation::join('category', 'category.id', '=', 'category_translations.category_id')
            ->select([
                'category_translations.name as name',
                'category_translations.locale as locale',
                'category.id as category_id',
                'category.slug as slug',
            ])
            ->where('category_translations.locale', '=', $current_lang)
            ->get();


        return view('admin::sections.category.create_edit', compact('language', 'language_icon', 'language_available', 'current_lang', 'category', 'action', 'categories'));

        //return view('admin::sections.category.create_edit', compact('category', 'language', 'language_icon', 'language_available', 'current_lang', 'action'));

    }


    public function postEditCategory(CategoryRequest $request ,$id)
    {
        if($this->processForm($request, $id)) {
            \Session::flash('success', 'Successfully updated.');
        } else {
            \Session::flash('failed', 'Failed!');
        }
        return redirect()->back();
    }

    public function getDeleteCategory($id) {
        $category = Category::find($id);

        if(!$category) {
            return view('errors.404');
        }
        return view('admin::sections.category.delete', compact('category'));
    }


    public function postDeleteCategory(DeleteRequest $request, $id) {

        if(Category::find($request->id)->delete()) {
            return redirect()->route('admin.category.get');
        }
        return 'Failed';
    }


    /**
     * @param $request
     * @param null $id
     * @return bool|mixed
     */
    protected function processForm($request , $id = null )
    {
        $category = ($id == null) ? new Category : Category::find($id);

        $category->slug = getUniqueSlug($category, $request->get('slug'));
        $category->parent = trim($request->get('parent'));
        $category->save();
        $locale = trim($request->get('locale')) ;
        $category->translateOrNew($locale)->name = trim($request->get('name')) ;
        $category->translateOrNew($locale)->description = trim($request->get('description')) ;

        if($category->save()) {
            return $category->id;
        } else {
            return false;
        }

    }


    public function getCategoryData(){

        $lang  = \Session::get('lang');

        $categories = CategoryTranslation::join('category', 'category.id', '=', 'category_translations.category_id')
            ->select(['category_translations.name as name', 'category_translations.locale as locale', 'category.id as category_id', 'category.slug as slug',])
            ->where(function($query) use($lang){
	            $lang == 'all' ? $query->whereIn('category_translations.locale', $this->language_available) : $query->where('category_translations.locale', $lang);
            })
            ->orderby('category.id', 'DESC');

        $datatables =  app('datatables')->of($categories);
        foreach ($this->language_available as $locale) {
            $datatables->addColumn($locale, function ($category) use ($locale) {

                $c = CategoryTranslation::where('category_id', $category->category_id)->where('locale', $locale)->get();
                if($c){
	                $icon = $category->locale == $locale ? 'ok' : 'pencil';
	                return '<a href="'. route('admin.category.edit.get', [$category->category_id, "&lang=$locale"]) .'"><i class="glyphicon glyphicon-'. $icon .'"></i></a>';
                } else {
                    return '<a href="'. route('admin.category.add.get', "id=$category->category_id&lang=$locale") .'"><i class="glyphicon glyphicon-plus"></i></a>';
                }

            });
        }
	    $datatables->escapeColumns([]);
        $datatables ->addColumn('action', function ($category) {
            return '<a class="btn btn-danger btn-sm" href="'. route('admin.category.delete.post' , $category->category_id) .'"><i class="fa fa-trash"></i>delete</a>';
        });
        return  $datatables->make(true);

    }

    /**
     * Check if url have lang param.
     *
     * @return void
     */
    protected function checkLang()
    {
        $this->current_lang = \Request::get('lang') !== null ? e(\Request::get('lang')) : 'en';
        if(!in_array($this->current_lang, $this->language_available)) {
            abort(404);
        }
    }
}