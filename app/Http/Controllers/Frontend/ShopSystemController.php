<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ShopSystemController extends Controller
{
    public function index()
    {
        return view('frontend.pages.contact.shop_system');
    }
}
