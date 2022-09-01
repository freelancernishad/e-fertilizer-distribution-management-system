<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $fillable = [
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
}
