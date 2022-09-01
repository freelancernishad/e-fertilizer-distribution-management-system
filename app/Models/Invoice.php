<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    use HasFactory;
    protected $fillable = [
        'orderId',
        'customer_name',
        'customer_id',
        'totalAmount',
        'address',
        'date',
        'type',
        'Invoices',
        'total_amount',
    ];



    public function customers(){
        return $this->belongsTo(Customer::class, 'customer_id', 'id');
    }
}
