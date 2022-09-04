<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use lemonpatwari\bangladeshgeocode\Models\Division;
use lemonpatwari\bangladeshgeocode\Models\District;
use lemonpatwari\bangladeshgeocode\Models\Thana;
use lemonpatwari\bangladeshgeocode\Models\Union;


class CountryApi extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $id = $request->id;
        $name = $request->name;
        $bn_name = $request->bn_name;

        if($id){

        }else if($name){

        }else if($bn_name){

        }
        return $id;

    }




    public function divisions(Request $request)
    {


        $divisions = Division::all();
        $districts = District::all();
        $thanas = Thana::all();
        $union = Union::all();
        
        $divisions = Division::with('districts')->get(); // districts hasMany
        $districts = District::with('division','thanas')->get(); //division belongsTo and thanas hasMany
        $thanas = Thana::with('district','unions')->get(); //district belongsTo and unions hasMany;
        $union = Union::all();
        
        $district = District::find(1);
        $thanas = $district->thanas;


        

          $id = $request->id;
          $name = $request->name;
          $bn_name = $request->bn_name;
  
          if($id){

           return   $adults = array_filter($divisions, function($value) use ($id) {
                return $value['id'] == $id;
            });

          }else if($name){
            return   $adults = array_filter($divisions, function($value) use ($name) {
                return $value['name'] == $name;
            });

          }else if($bn_name){
            return   $adults = array_filter($divisions, function($value) use ($bn_name) {
                return $value['bn_name'] == $bn_name;
            });
          }else{
            return      $divisions = Division::all();
          }


    }



    public function districts(Request $request)
    {
  




          $won_id = $request->won_id;
          $id = $request->id;
          $name = $request->name;
          $bn_name = $request->bn_name;
  
          if($id){

           return   $adults = array_filter($districts, function($value) use ($id) {
                return $value['division_id'] == $id;
            });

          }else if($won_id){

           return   $adults = array_filter($districts, function($value) use ($won_id) {
                return $value['id'] == $won_id;
            });

          }else if($name){



            return   $adults = array_filter($districts, function($value) use ($name) {
                return $value['division_id'] == $name;
            });



          }else if($bn_name){
            return   $adults = array_filter($districts, function($value) use ($bn_name) {
                return $value['division_id'] == $bn_name;
            });
          }else{
            return $districts;
          }

    }


    public function upazilas(Request $request)
    {
  

        

          $won_id = $request->won_id;
          $id = $request->id;
          $name = $request->name;
          $bn_name = $request->bn_name;
  
          if($id){

           return   $adults = array_filter($upazilas, function($value) use ($id) {
                return $value['district_id'] == $id;
            });

          }else if($won_id){

           return   $adults = array_filter($upazilas, function($value) use ($won_id) {
                return $value['id'] == $won_id;
            });

          }else if($name){



            return   $adults = array_filter($upazilas, function($value) use ($name) {
                return $value['district_id'] == $name;
            });



          }else if($bn_name){
            return   $adults = array_filter($upazilas, function($value) use ($bn_name) {
                return $value['district_id'] == $bn_name;
            });
          }else{
            return $upazilas;
          }

    }

    public function unions(Request $request)
    {
  

          $won_id = $request->won_id;
          $id = $request->id;
          $name = $request->name;
          $bn_name = $request->bn_name;
  
          if($id){

           return   $adults = array_filter($unions, function($value) use ($id) {
                return $value['upazilla_id'] == $id;
            });

          }else
          if($won_id){

           return   $adults = array_filter($unions, function($value) use ($won_idid) {
                return $value['id'] == $won_id;
            });

          }else if($name){



            return   $adults = array_filter($unions, function($value) use ($name) {
                return $value['upazilla_id'] == $name;
            });



          }else if($bn_name){
            return   $adults = array_filter($unions, function($value) use ($bn_name) {
                return $value['upazilla_id'] == $bn_name;
            });
          }else{
            return $unions;
          }

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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
