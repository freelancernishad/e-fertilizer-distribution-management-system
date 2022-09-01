<?php

namespace App\Http\Controllers\api;

use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class CustomerController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $type = $request->type;
if($type==''){
    $customers = Customer::orderBy('id','DESC')->get();
}if($type=='input'){

    $customers = Customer::orderBy('id','DESC')->get();
    $data =[];
    foreach ($customers as $value) {
    array_push($data,['id'=>$value->id,'text'=>$value->name.' '. $value->phone.' '. $value->nidNo]);
    }
    return response()->json($data);

}else{
    $customers = Customer::where('email',$type)->orderBy('id','DESC')->get();
}

        return response()->json($customers);
    }

    public function CustomerDue(Request $request,$id)
    {

        $order = DB::table('orders')->where(['customer_id'=>$id])->sum('due');
        return response()->json($order);
    }
    public function DueCuatomer(Request $request)
    {
        $type = $request->type;

         $row = DB::table('customers')

        // ->join('orders', 'customers.id', '=', 'orders.customer_id')
        ->join ('orders', function ($query) {
            $query->on('customers.id', '=', 'orders.customer_id')
             ->limit(1);
        })

        ->select('customers.*', 'customers.id')
        ->distinct('customers.id')
        ->where(['email' => $type])
        ->where('orders.due','>',0)
        ->get();
        // $order = DB::table('orders')->where('customer_id',$id)->sum('due');



         return response()->json($row);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'name' => 'required|max:80',
        //     'phone' => 'required|unique:customers',
        // ]);
        $data = $request->except(['photo']);
        $imageCount =  count(explode(';', $request->photo));

        if ($imageCount > 1) {
             $data['photo'] =  fileupload( $request->photo, "backend/customer/", 250, 300);
        }
        return Customer::create($data);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $customer = Customer::findOrFail($id);
        return response()->json($customer);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // $request->validate([
        //     'name' => 'required|max:80',
        //     // 'email' => 'required',
        //     'phone' => 'required',
        // ]);

      $data = $request->except(['photo']);
        $customer = Customer::findOrFail($id);


        $imageCount =  count(explode(';', $request->photo));

        if ($imageCount > 1) {
             $data['photo'] =  fileupload( $request->photo, "backend/customer/", 250, 300);
        }

        $customer->update($data);



    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $customer = Customer::findOrFail($id);
        $photo = $customer->photo;

        if ($photo) {
            unlink($photo);
            $customer->delete();
        }else{
            $customer->delete();
        }
    }





    public function search(Request $request)
    {

        $data = $request->data;


        $columns = ['name','phone'];
        $result =  Customer::select('*');
                foreach($columns as $column)
                {
                  $result->orWhere($column, 'like','%'.$data.'%');
                }
       $data = $result->get();

        return response()->json($data);
    }








}

