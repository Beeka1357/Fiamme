<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\MultiImg;
use App\Models\Brand;
use App\Models\Product;
use App\Models\User;
use App\Models\Offer;
class IndexController extends Controller
{

     public function Index()
     {
          $cat = Category::where('category_name',1)->get();
          $prod = [];
          foreach ($cat as $c) {
               $prod[$c->category_name] =  Product::where('status', 1)->where('category_id', $c->id)->orderBy('id', 'DESC')->limit(1)->get();

          }
                         $hot_deals = Product::where('hot_deals', 1)->where('discount_price', '!=', NULL)->orderBy('id', 'DESC')->limit(3)->get();

               $special_offer = Product::where('special_offer', 1)->orderBy('id', 'DESC')->limit(3)->get();
               $new = Product::where('status', 1)->orderBy('id', 'DESC')->limit(3)->get();

               $special_deals = Product::where('special_deals', 1)->orderBy('id', 'DESC')->limit(3)->get();
          // $skip_product_0 = Product::where('status',1)->where('category_id',$skip_category_0->id)->orderBy('id','DESC')->limit(5)->get();

          return view('frontend.index', compact(['cat', 'prod', 'hot_deals', 'special_offer', 'new', 'special_deals']));
     }
     // End Method 

     public function ProductDetails($id, $slug)
     {

          $product = Product::findOrFail($id);
          // dd($product);
          $color = $product->product_color;
          $product_color = explode(',', $color);

          $size = $product->product_size;
          $product_size = explode(',', $size);

          $multiImage = MultiImg::where('product_id', $id)->get();

          $cat_id = $product->category_id;
          $relatedProduct = Product::where('category_id', $cat_id)->where('id', '!=', $id)->orderBy('id', 'DESC')->limit(4)->get();

           // Get Group Products (Product Colors)
     //    $groupProducts = array();
     //    if(!empty($productsDetails['product_code'])){
     //        $groupProducts = Product::select('category_id', 'product_slug')->where('category_id','!=',$cat_id)->where([
     //            'product_code' => $productsDetails['product_code'], 'status' => 1]) ->get()->toArray();
               
     //    }
     //    dd($groupProducts);
     // Get Group Products (Product Colors)
$groupProducts = array();
if (!empty($product['group_code'])) {
    $groupProducts = Product::select('id', 'product_color','product_slug')
        ->where('category_id', '=', $cat_id)
        ->where([
            'group_code' => $product['group_code'],
            'status' => 1
        ])
        ->get();
      
}
// dd($groupProducts);
$colorProd = [];
if(count($groupProducts) > 0){
     foreach($groupProducts as $p){
          if(!in_array($p->product_color,$colorProd)){
               $colorProd[$p->product_color] = [
                    'product_id' => $p->id,
                    'product_color' => $p->product_color,
                    'product_slug' => $p->product_slug
               ];
          }
     }
}

// Debugging $groupProducts
//  dd($product);


          return view('frontend.product.product_details', compact('product', 'colorProd','product_color', 'product_size', 'multiImage', 'relatedProduct'));
     } // End Method

     public function CatWiseProduct(Request $request, $id, $slug)
     {
          $products = Product::where('status', 1)->where('category_id', $id)->orderBy('id', 'DESC')->get();
          $categories = Category::all();
          foreach ($categories as $cat) {
               $cat['prod_count'] = Product::where('status', 1)->where('category_id', $cat->id)->count();
          }
          $breadcat = Category::where('id', $id)->first();
          $newProduct = Product::orderBy('id', 'DESC')->limit(3)->get();

          return view('frontend.product.category_view', compact('products', 'categories', 'breadcat', 'newProduct'));
     }
     // End Method

     public function SubCatWiseProduct(Request $request, $id, $slug)
     {
          $products = Product::where('status', 1)->where('subcategory_id', $id)->orderBy('id', 'DESC')->get();
          $categories = Category::orderBy('category_name', 'ASC')->get();

          $breadsubcat = SubCategory::where('id', $id)->first();

          $newProduct = Product::orderBy('id', 'DESC')->limit(3)->get();

          return view('frontend.product.subcategory_view', compact('products', 'categories', 'breadsubcat', 'newProduct'));
     }
     // End Method 

     public function offerWiseProduct(Request $request, $id, $slug)
     {
          $products = Product::where('status', 1)->where('offer', 'LIKE' , '%'.$slug.'%')->orderBy('id', 'DESC')->get();
          // echo '<pre>';print_r($products);die;
          $categories = Category::orderBy('category_name', 'ASC')->get();

          $breadsuboffer = Offer::where('id', $id)->first();

          $newProduct = Product::orderBy('id', 'DESC')->limit(3)->get();

          return view('frontend.offer.offer_view', compact('products', 'categories','breadsuboffer', 'newProduct'));
     }

     public function ProductViewAjax($id)
     {

          $product = Product::with('category', 'brand')->findOrFail($id);
          $color = $product->product_color;
          $product_color = explode(',', $color);

          $size = $product->product_size;
          $product_size = explode(',', $size);

          return response()->json(array(

               'product' => $product,
               'color' => $product_color,
               'size' => $product_size,

          ));
     }
     // End Method 

     public function ProductSearch(Request $request)
     {

          $request->validate(['search' => "required"]);

          $item = $request->search;
          $categories = Category::orderBy('category_name', 'ASC')->get();
          $products = Product::where('product_name', 'LIKE', "%$item%")->get();
          $newProduct = Product::orderBy('id', 'DESC')->limit(3)->get();
          return view('frontend.product.search', compact('products', 'item', 'categories', 'newProduct'));
     }
     // End Method 

     public function SearchProduct(Request $request)
     {

          $request->validate(['search' => "required"]);

          $item = $request->search;
          $products = Product::where('product_name', 'LIKE', "%$item%")->select('product_name', 'product_slug', 'product_thambnail', 'selling_price', 'id')->limit(6)->get();

          return view('frontend.product.search_product', compact('products'));
     }
     // End Method 





}
