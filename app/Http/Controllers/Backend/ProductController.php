<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\MultiImg;
use App\Models\Brand;
use App\Models\Product;
use App\Models\User;
use App\Models\ProductByColor;
use Carbon\Carbon;
use Image;
use File;



class ProductController extends Controller
{
    public function AllProduct()
    {
        $products = Product::latest()->get();
        return view('backend.product.product_all', compact('products'));
    }
    // End Method 

    public function AddProduct()
    {

        $activeVendor = User::where('status', 'active')->where('role', 'vendor')->latest()->get();
        $brands = Brand::latest()->get();
        $categories = Category::latest()->get();

        return view('backend.product.product_add', compact('brands', 'categories', 'activeVendor'));
    }
    // End Method 

    public function StoreProduct(Request $request)
    {

// echo'<pre>';print_r($request->all());die;
        $image = $request->file('product_thambnail');

        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)->encode('webp', 90)->resize(300, 300)->save('upload/products/thambnail/' . $name_gen);

        $save_url = 'upload/products/thambnail/' . $name_gen;

        $product_id = Product::insertGetId([

            'brand_id' => $request->brand_id,
            'category_id' => $request->category_id,
            'subcategory_id' => $request->subcategory_id,
            'product_name' => $request->product_name,
            'product_slug' => strtolower(str_replace(' ', '-', $request->product_name)),

            'product_code' => $request->product_code,
            'product_qty' => $request->product_qty,
            'product_tags' => $request->product_tags,
            'product_size' => $request->product_size,
            'product_color' => $request->product_color,
            'group_code' => $request->group_code,
            'product_color_code' => $request->product_color_code,

            'selling_price' => $request->selling_price,
            'discount_price' => $request->discount_price,
            'short_descp' => $request->short_descp,
            'long_descp' => $request->long_descp,

            'hot_deals' => $request->hot_deals,
            'featured' => $request->featured,
            'special_offer' => $request->special_offer,
            'special_deals' => $request->special_deals,

            'product_thambnail' => $save_url,
            'vendor_id' => $request->vendor_id,
            'status' => 1,
            'created_at' => Carbon::now(),

        ]);


        /// Multiple Image Upload From her //////
        $images = $request->file('multi_img');
        // echo '<pre>';print_R($images);die;
        foreach ($images as $img) {
            $make_name = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
            $directory = public_path('upload/products/multi-image/' . $product_id . '/' . strtolower($request->product_color));
                    File::makeDirectory($directory, $mode = 0755, true, true);
            Image::make($img)->resize(300, 300)->save('upload/products/multi-image/'.$product_id.'/'.strtolower($request->product_color).'/' . $make_name);
            $uploadPath = 'upload/products/multi-image/'.$product_id.'/'.strtolower($request->product_color).'/' . $make_name;
            MultiImg::insert([
                'product_id' => $product_id,
                'photo_name' => $uploadPath,
                'created_at' => Carbon::now(),

            ]);
        } // End Method 
        $notification = array(
            'message' => 'Product Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.product')->with($notification);
    }

    /// Multiple Image Upload From her //////
    function processMultiImages($request)
    {
        $images = $request->file('multi_imgs');
        $img = MultiImg::find($request->multi_img_id);

        foreach ($images as $img) {
            $make_name = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
            \Image::make($img)->resize(300, 300)->save('upload/products/multi-image/' . $make_name);
            $uploadPath = 'upload/products/multi-image/' . $make_name;

            $img->photo_name = $uploadPath;
            $img->save();

            //     MultiImg::insert([

            //     'product_id' => $img->product_id,
            //     'photo_name' => $uploadPath,
            //     'created_at' => Carbon::now(), 

            // ]); 
        } // end foreach

        /// End Multiple Image Upload From her //////

        $notification = array(
            'message' => 'Product Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.product')->with($notification);
    }


    // end foreach

    /// End Multiple Image Upload From her //////








    public function EditProduct($id)
    {
        $multiImgs = MultiImg::where('product_id', $id)->get();
        $activeVendor = User::where('status', 'active')->where('role', 'vendor')->latest()->get();
        $brands = Brand::latest()->get();
        $categories = Category::latest()->get();
        $subcategory = SubCategory::latest()->get();
        $products = Product::findOrFail($id);
        return view('backend.product.product_edit', compact('brands', 'categories', 'activeVendor', 'products', 'subcategory', 'multiImgs'));
    } // End Method 


    public function UpdateProduct(Request $request)
    {
        $product_id = $request->id;
        Product::findOrFail($product_id)->update([

            'brand_id' => $request->brand_id,
            'category_id' => $request->category_id,
            'subcategory_id' => $request->subcategory_id,
            'product_name' => $request->product_name,
            'product_slug' => strtolower(str_replace(' ', '-', $request->product_name)),

            'product_code' => $request->product_code,
            'product_qty' => $request->product_qty,
            'product_tags' => $request->product_tags,
            'product_size' => $request->product_size,
            'product_color' => $request->product_color,
            'group_code' => $request->group_code,
            'product_color_code' => $request->product_color_code,

            'selling_price' => $request->selling_price,
            'discount_price' => $request->discount_price,
            'short_descp' => $request->short_descp,
            'long_descp' => $request->long_descp,

            'hot_deals' => $request->hot_deals,
            'featured' => $request->featured,
            'special_offer' => $request->special_offer,
            'special_deals' => $request->special_deals,


            'vendor_id' => $request->vendor_id,
            'status' => 1,
            'created_at' => Carbon::now(),

        ]);


        $notification = array(
            'message' => 'Product Updated Without Image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.product')->with($notification);
    } // End Method 

    public function UpdateProductThambnail(Request $request)
    {

        $pro_id = $request->id;
        $oldImage = $request->old_img;

        $image = $request->file('product_thambnail');
        $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)->encode('webp', 90)->resize(300, 300)->save('upload/products/thambnail/' . $name_gen);
        $save_url = 'upload/products/thambnail/' . $name_gen;

        if (file_exists($oldImage)) {
            unlink($oldImage);
        }

        Product::findOrFail($pro_id)->update([

            'product_thambnail' => $save_url,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Product Image Thambnail Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
    // End Method 

    // Multi Image Update 
    public function UpdateProductMultiimage(Request $request)
    {

        $imgs = $request->multi_img;

        foreach ($imgs as $id => $img) {
            $imgDel = MultiImg::findOrFail($id);
            unlink($imgDel->photo_name);

            $make_name = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
            Image::make($img)->encode('webp', 90)->resize(300, 300)->save('upload/products/multi-image/' . $make_name);
            $uploadPath = 'upload/products/multi-image/' . $make_name;

            MultiImg::where('id', $id)->update([
                'photo_name' => $uploadPath,
                'updated_at' => Carbon::now(),

            ]);
        } // end foreach

        $notification = array(
            'message' => 'Product Multi Image Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
    // End Method 

    public function MulitImageDelelte($id)
    {
        $oldImg = MultiImg::findOrFail($id);
        unlink($oldImg->photo_name);

        MultiImg::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Product Multi Image Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
    // End Method

    public function ProductInactive($id)
    {

        Product::findOrFail($id)->update(['status' => 0]);
        $notification = array(
            'message' => 'Product Inactive',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
    // End Method 


    public function ProductActive($id)
    {

        Product::findOrFail($id)->update(['status' => 1]);
        $notification = array(
            'message' => 'Product Active',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
    // End Method 

    public function ProductDelete($id)
    {

        $product = Product::findOrFail($id);
        unlink($product->product_thambnail);
        Product::findOrFail($id)->delete();

        $imges = MultiImg::where('product_id', $id)->get();
        foreach ($imges as $img) {
            unlink($img->photo_name);
            MultiImg::where('product_id', $id)->delete();
        }

        $notification = array(
            'message' => 'Product Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
    // End Method 

    public function ProductStock()
    {

        $products = Product::latest()->get();
        return view('backend.product.product_stock', compact('products'));
    }
    // End Method 


    // Add Product Color SECTION

    public function AddProductByColor($id)
    {
        return view('backend.product.product_byColor', ['product' => Product::find($id)]);
    }



    public function StoreProductByColor(Request $request)
    {
   
        $data = $request->all();
        // dd($data);
        $product_id = $data['id'];
        $product = Product::find($product_id);
    
        foreach ($data['prod'] as $key => $value) {
            if (isset($value["product_by_thambnail"])) {
   
                // Store main product thumbnail
                $image = $value["product_by_thambnail"];
  
                $name_gen = hexdec(uniqid()) . '.webp';
                Image::make($image)->encode('webp', 90)->resize(300, 300)->save(public_path('upload/products/thambnail/' . $name_gen));

                $save_url = 'upload/products/thambnail/' . $name_gen;

                // // Store product with main thumbnail
                $prod_id = Product::insert([

                    'brand_id' => $product['brand_id'],
                    'category_id' => $product['category_id'],
                    'subcategory_id' => $product['subcategory_id'],
                    'product_name' => $product['product_name'],
                    'product_slug' => strtolower(str_replace(' ', '-', $product['product_name'])),

                    'product_code' => $product['product_code'],
                    'product_qty' => $product['product_qty'],
                    'product_tags' => $product['product_tags'],
                    'product_size' => $product['product_size'],
                    'product_color' => $value['product_by_color'],
                    'group_code' => $product['group_code'],
                    'product_color_code' => '',

                    'selling_price' => $product['selling_price'],
                    'discount_price' => $product['discount_price'],
                    'short_descp' => $product['short_descp'],
                    'long_descp' => $product['long_descp'],

                    'hot_deals' => $product['hot_deals'],
                    'featured' => $product['featured'],
                    'special_offer' => $product['special_offer'],
                    'special_deals' => $product['special_deals'],

                    'product_thambnail' => $save_url,
                    'vendor_id' => $product['vendor_id'],
                    'status' => 1,
                    'created_at' => Carbon::now(),

                ]);

                // Store multiple images
                $images = $value['product_by_multiImgs'];
                foreach ($images as $img) {
                    $make_name = hexdec(uniqid()) . '.webp';
                    $directory = public_path('upload/products/multi-image/' . $product_id . '/' . strtolower($value['product_by_color']));
                    File::makeDirectory($directory, $mode = 0755, true, true);

                    Image::make($img)->resize(300, 300)->save($directory . '/' . $make_name);
                    $uploadPath = 'upload/products/multi-image/' . $product_id . '/' . strtolower($value['product_by_color']) . '/' . $make_name;
                    MultiImg::insert([
                        'product_id' => $prod_id,
                        'photo_name' => $uploadPath,
                        
                        'created_at' => Carbon::now(),
                    ]);
                }
            }
        }
        // die();

        $notification = array(
            'message' => 'Product Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.product')->with($notification);
    }
}
