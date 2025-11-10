<?php

use App\Http\Controllers\Auth\Session;
use App\Http\Controllers\General;
use App\Http\Controllers\PostController;
use App\Http\Controllers\TagController;
use Illuminate\Support\Facades\Route;

Route::get('/', [General::class, 'home'])->name('home');
Route::get('/other', [General::class, 'other'])->name('other');

Route::middleware('guest')->group((function(){
    Route::resource('sessions', Session::class)->only(['create', 'store']);
}));

Route::middleware('auth')->prefix('/office')->group(function () {
    Route::delete('/sessions', [Session::class,'logout'])->name('sessions.destroy');
    Route::resource('posts', PostController::class);
    Route::resource('tags', TagController::class);
});
