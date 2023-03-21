<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Route;

use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        $currenturl = url()->full();
        $word = '/api/';
        
    if (str_contains($currenturl , $word)) {
           
           if (! $request->expectsJson()) {
           return route('');

        }
} else {
            if (!$request->expectsJson()) {
                return route('login');
            }
        }
    }
}
