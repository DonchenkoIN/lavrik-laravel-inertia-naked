<?php

use App\Http\Controllers\General;
use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

Route::get('/', [General::class, 'home'])->name('home');
Route::get('/other', [General::class, 'other'])->name('other');

Route::resource('posts', PostController::class);
