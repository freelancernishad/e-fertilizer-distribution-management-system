<?php

namespace App\Exports;

use App\Models\Product;
use Illuminate\Support\Facades\DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;

class ProductsExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */


    public function view(): View
    {
        return view('productExport', ['Products' =>  Product::with(['categorys'])->orderBy('id','desc')->get()
        ]);
    }
}
