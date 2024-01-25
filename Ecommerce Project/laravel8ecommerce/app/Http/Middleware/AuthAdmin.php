<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AuthAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if(session('utype') === 'ADM')          //If user is ADMIN.
        {
          return $next($request);
        }else{                                  //If user is not ADMIN.
             session()->flush();                // through flush(); method you can clear all of your session data.
             return redirect()->route('login'); //redirect to login page.
        }
        return $next($request);
    }
}
