<?php

namespace App\Http\Controllers\api;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;

class CategoryController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $dillerId = $request->dillerId;
        if($dillerId){
            $categories = Category::with(['Dellars'])->distinct()->where(['dillerId'=>$dillerId])->orderBy('id','desc')->get()->unique('category_name');
        }else{
            $categories = Category::with(['Dellars'])->distinct()->orderBy('id','desc')->get()->unique('category_name');
        }
        return response()->json($categories);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'category_name' => 'required|unique:categories|max:50',
        ]);

        $data = $request->except('price');
        $data['price'] = int_bn_to_en($request->price);

        return Category::create($data);

            // $category = new Category;
            // $category->category_name = $request->category_name;
            // $category->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $category = Category::findOrFail($id);
        return response()->json($category);
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

        $category = Category::findOrFail($id);
        $data = $request->all();
        $delars =  User::where(['role'=>'diller'])->get();

        foreach ($delars as $value) {
            $data['dillerId'] = $value->dillerId;
            $sarcount = Category::where(['dillerId'=>$value->dillerId,'category_name'=>$category->category_name])->count();
            $sars = Category::where(['dillerId'=>$value->dillerId,'category_name'=>$category->category_name])->first();
            if($sarcount){

                $sars->update($data);
            }else{

                return Category::create($data);
            }


        }
die();

        // $request->validate([
        //     'category_name' => 'required|unique:categories|max:80',
        // ]);
        $data = $request->all();
        $category = Category::findOrFail($id);
        $category->update($data);

        // $category->category_name = $request->category_name;
        // $category->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Category::findOrFail($id)->delete();
    }
}
