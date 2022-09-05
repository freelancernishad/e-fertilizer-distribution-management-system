<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'dillerId',
        'category_name',
        'price',
        'product_quantity',
    ];



    public function Dellars(){
        return $this->belongsTo(User::class, 'dillerId', 'dillerId');
    }
}
