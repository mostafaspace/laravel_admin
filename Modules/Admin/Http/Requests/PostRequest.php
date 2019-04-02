<?php namespace Modules\Admin\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * @property mixed id
 */
class PostRequest extends FormRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        /*$FoundLanguages = Modules\Admin\Models\Language::where('confirmed', '=', 1)->get();
        foreach($FoundLanguages as $lang)
        {
            $rules['title.' . $lang->locale]       = 'required|min:3';
            $rules['description.' . $lang->locale] = 'required|min:3';
            $rules['content.' . $lang->locale]     = 'required|min:3';
        }*/

        $rules['post_type']       = 'required';
        $rules['post_title']      = 'required|max:255';
        $rules['slug']       	  = 'min:2|alpha_dash|unique:posts,slug,' . intval($this->id);
        $rules['post_content']    = 'required';
        $rules['post_excerpt']    = 'max:255';
        $rules['file']      	  = 'image';
        
        return $rules;
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

}