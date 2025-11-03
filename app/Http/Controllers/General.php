<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class General extends Controller
{
    public function home()
    {
        return Inertia::render('Home', ['a' => rand(1, 100)]);
    }

    public function other()
    {
        return Inertia::render('Other');
    }
}
