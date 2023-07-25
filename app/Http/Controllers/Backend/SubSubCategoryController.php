<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\SubSubCategory;

class SubSubCategoryController extends Controller
{
    public function AllSubsubCategory(){
       $subcategories = SubCategory::get();
       $subsubcategories = SubSubCategory::with(['belongsubcategory'])->get();
    //    echo '<pre>'; print_r($subsubcategories); die();'</pre>';
        return view('backend.SubSubCategory.subsubcategory_all',compact(['subcategories','subsubcategories']));
        
    }

    public function AddSubSubCategory(){
        $subcategories = SubCategory::get();
        return view('backend.SubSubCategory.subsubcategory_add',compact('subcategories'));
    }

    
    public function StoreSubSubCategory(Request $request){ 

        SubSubCategory::insert([
            'sub_category_id' => $request->sub_category_id,
            'subsubcategory_name' => $request->subsubcategory_name,
            'subsubcategory_slug' => strtolower(str_replace(' ', '-',$request->subsubcategory_name)), 
        ]);

       $notification = array(
            'message' => 'Sub SubCategory Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.subsubcategory')->with($notification); 

    }
    // End Method 

    public function EditSubSubCategory($id){

        $subcategories = SubCategory::orderBy('subcategory_name','ASC')->get();
        $subsubcategory = SubSubCategory::findOrFail($id);
        return view('backend.SubSubCategory.subsubcategory_edit',compact('subcategories','subsubcategory'));
  
      }
      // End Method 

      public function UpdateSubSubCategory(Request $request){
  
        $subsubcat_id = $request->id;

         SubSubCategory::findOrFail($subsubcat_id)->update([
            'sub_category_id' => $request->sub_category_id,
            'subsubcategory_name' => $request->subsubcategory_name,
            'subsubcategory_slug' => strtolower(str_replace(' ', '-',$request->subsubcategory_name)), 
        ]);

       $notification = array(
            'message' => 'Sub SubCategory Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.subsubcategory')->with($notification); 


    }
    // End Method 

    public function DeleteSubSubCategory($id){
  
        SubSubCategory::findOrFail($id)->delete();

         $notification = array(
            'message' => 'Sub SubCategory Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification); 


    }
    // End Method 

}
