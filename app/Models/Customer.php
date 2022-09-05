<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $fillable = [
        'dillerId',
        'name',
        'email',
        'phone',
        'nidNo',
        'fatherName',
        'vill',
        'wordNo',
        'Block',
        'mouja',
        'union',
        'thana',
        'district',
        'landArea',
        'photo',
    ];


    public function Dellars(){
        return $this->belongsTo(User::class, 'dillerId', 'dillerId');
    }

}
