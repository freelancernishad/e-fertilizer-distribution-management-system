<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
    	'memoNong','type','category_id','category_name', 'supplier_id','product_name','product_code','root','buying_price','selling_price','buying_date','expired_date','image','product_quantity'
    ];



    public function categorys(){
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }
}
