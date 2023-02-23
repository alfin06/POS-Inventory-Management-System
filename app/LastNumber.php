<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LastNumber extends Model
{
    protected $table = 'last_number';
    protected $fillable =[
        "id", "invoice_type", "invoice_month", "invoice_number", "updated_at"
    ];
}
