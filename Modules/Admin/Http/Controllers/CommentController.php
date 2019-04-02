<?php namespace Modules\Admin\Http\Controllers;


class CommentController extends AdminController {
	
	public function getComment()
	{
		return view('admin::sections.comments.index');
	}


}