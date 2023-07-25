<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubSubCategory extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function belongsubcategory(){
        return $this->hasOne(SubCategory::class,'id','sub_category_id');
    }
}
