<?php namespace Modules\Admin\Http\Controllers;

use \Illuminate\Routing\Controller;

class AdminController extends Controller {

	/**
	 * Initializer.
	 *
	 * @return
	 */
	public function __construct()
	{
		if(!\Session::has('lang')) {
			\Session::put('lang', 'all');
		}
		return null;
	}

	public function index()
	{
		return view('admin::index');
	}

}