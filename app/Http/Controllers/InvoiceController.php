<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Customer;
use App\Models\Invoice;
use Illuminate\Http\Request;
use Spatie\QueryBuilder\QueryBuilder;
use Spatie\QueryBuilder\AllowedFilter;
use Meneses\LaravelMpdf\Facades\LaravelMpdf;
use Rakibhstu\Banglanumber\NumberToBangla;


class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $from = $request->from;
        $to = $request->to;
        if($from && $to){
          // return 'sss';

            return Invoice::with(['customers'])->whereBetween('date', [$from, $to])->orderBy('id','desc')->get();
        }elseif($from){

            return Invoice::with(['customers'])->where('date',$from)->orderBy('id','desc')->get();

        }else{

            return Invoice::with(['customers'])->orderBy('id','desc')->get();
        }

        // return Invoice::with(['customers'])->orderBy('id','desc')->get();
    }




    public function invoice(Request $request,$id)
    {

          $orders = Invoice::find($id);


//         print_r($orderDetails);
//  die();





$numto = new NumberToBangla();
$amount = $numto->bnMoney($orders->total_amount);

        $fileName = 'Invoice-'.date('Y-m-d H:m:s');

        $data['fileName'] = $fileName;

        $pdf = LaravelMpdf::loadView('invoice2',$data,compact('orders','amount'));
        return $pdf->stream("$fileName.pdf");
        # code...
    }




    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

       $pos = $request->pos;
        $cusomer = Customer::find($pos);


       $data = [
        'Invoices'=> json_encode($request->Invoices),
        'address'=> $request->address,
        'totalProduct'=> $request->totalProduct,
        'customer_name'=> $cusomer->name,
        'customer_id'=> $pos,
        'address'=> $cusomer->vill.', '.$cusomer->union.', '.$cusomer->thana .', '.$cusomer->district,
        'totalAmount'=> $request->totalAmount,
        'date'=> $request->date,
        'type'=> $request->type,
       ];
        $total_amount = 0;
        foreach ($request->Invoices as $key => $value) {
        $total_amount += $value['weight_quantity']*$value['price'];
            // return $value['weight_quantity'];
            $category = Category::where(['category_name'=>$value['name']])->first();
             $product_quantity = $category->product_quantity-$value['weight_quantity'];
            $category->update(['product_quantity'=>$product_quantity]);


        }
        $data['total_amount'] = $total_amount;




        return Invoice::create($data);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function show(Invoice $invoice)
    {
        // return $invoice;
        return Invoice::with(['customers'])->find($invoice->id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function edit(Invoice $invoice)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Invoice $invoice)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function destroy(Invoice $invoice)
    {
        //
    }
}
