<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class RoleCheck
{
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @param  string|null  $guard
	 * @return mixed
	 */
	public function handle($request, Closure $next)
	{
		if ($request->user() === null) {
			if ($request->ajax() || $request->wantsJson()) {
				return response('Unauthorized.', 401);
			} else {
				return redirect()->guest('login');
			}
		}

		$actions = $request->route()->getAction();
		$roles = isset($actions['roles']) ? $actions['roles']: null;

		if ($request->user()->hasAnyRole($roles) || !$roles) {
			return $next($request);
		}
		// return response('Unauthorized.', 401);
		return redirect()->guest('login');

	}
}
