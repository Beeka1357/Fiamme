<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class MethodNotAllowed
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->method() !== 'POST') {
            return response()->json([
                'error' => 'Method not allowed',
                'message' => 'The GET method is not supported for this route. Supported methods: POST.'
            ], 405);
        }
        return $next($request);
    }
}
