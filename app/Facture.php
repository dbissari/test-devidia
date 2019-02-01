<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Facture extends Model
{
    protected $fillable = [
        'client_id', 'nom', 'created_at', 'updated_at'
    ];

    public function client()
    {
        return $this->belongsTo(Client::class);
    }
}
