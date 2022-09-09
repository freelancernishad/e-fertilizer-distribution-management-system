<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Spatie\QueryBuilder\QueryBuilder;
use Spatie\QueryBuilder\AllowedFilter;
use Rakibhstu\Banglanumber\NumberToBangla;
use Meneses\LaravelMpdf\Facades\LaravelMpdf;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $type = $request->type;
        if($type){

            return User::where('role',$type)->get();
        }
        return User::where('role','!=','diller')->get();
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

        $data = $request->all();
        $data['dillerId'] = time();
        if($request->password){
            $data['password'] =  Hash::make($request->password);
        }else{
            $data['password'] =  Hash::make(time());
        }


        $delar =  User::create($data);

        Category::create(['dillerId'=>$delar->dillerId,'category_name'=>'ইউরিয়া','price'=>'16','product_quantity'=>0]);
        Category::create(['dillerId'=>$delar->dillerId,'category_name'=>'ডিএপি','price'=>'22','product_quantity'=>0]);
        Category::create(['dillerId'=>$delar->dillerId,'category_name'=>'এমওপি','price'=>'15','product_quantity'=>0]);
        Category::create(['dillerId'=>$delar->dillerId,'category_name'=>'টিএসপি','price'=>'16','product_quantity'=>0]);




    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return $user;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $data = $request->except('password');

        $data = $request->all();
        if($request->password){
            $data['password'] =  Hash::make($request->password);
        }

        $user->update($data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        return $user->delete();
    }
}
