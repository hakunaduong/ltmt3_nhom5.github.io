<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Product;
use Illuminate\Http\Request;

class PromotionController extends FrontendController
{
    public function index(Request $request)
    {
        $products = Product::where([
            'pro_active' => 1,
            'pro_hot'    => 1
        ])->where('pro_sale', '>', 0);

        $paramAtbSearch = $request->except('price', 'page', 'k', 'country', 'rv', 'sort');
        $paramAtbSearch = array_values($paramAtbSearch);

        if (!empty($paramAtbSearch)) {
            $products->whereHas('attributes', function ($query) use ($paramAtbSearch) {
                $query->whereIn('pa_attribute_id', $paramAtbSearch);
            });
        }

        if ($request->price) {
            $price = $request->price;
            if ($price == 6) {
                $products->where('pro_price', '>', 100000);
            } else {
                $products->where('pro_price', '<=', 20000 * $price);
            }
        }

        if ($request->k) $products->where('pro_name', 'like', '%' . $request->k . '%');
        if ($request->rv) $products->where('pro_review_star', $request->rv);
        if ($request->sort) $products->orderBy('id', $request->sort);

        $products = $products->select('id', 'pro_name', 'pro_slug', 'pro_sale', 'pro_unit','pro_number', 'pro_avatar', 'pro_price', 'pro_review_total', 'pro_review_star')
            ->paginate(12);

        // Lấy thuộc tính
        $attributes = $this->syncAttributeGroup();

        $viewData = [
            'attributes'  => $attributes,
            'products'    => $products,
            'title_page'  => 'Khuyến mãi hót',
            'query'       => $request->query(),
            'breadcrumb'  => 'Khuyến mãi hót',
            'link_search' => request()->fullUrlWithQuery(['k' => \Request::get('k')])
        ];

        return view('frontend.pages.product.index', $viewData);
    }
}
