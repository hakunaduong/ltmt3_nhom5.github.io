<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $k        = $request->k;
        $products = Product::where([
				'pro_active' => 1,
            ])
                ->where('pro_name', 'like','%' . $k . '%')
				->orderByDesc('id')
				->select('id', 'pro_name', 'pro_slug','pro_unit', 'pro_sale', 'pro_active', 'pro_avatar','pro_pay', 'pro_price','pro_number', 'pro_review_total', 'pro_review_star')
				->paginate(12);
		
        $viewData = [
            'products'  => $products,
            'k'         => $k,
            'query'     => $request->query()

        ];

        return view( 'frontend.pages.product.index', $viewData);
    }
}
