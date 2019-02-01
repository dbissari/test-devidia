<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $fillable = [
        'nom', 'telephone', 'email', 'created_at', 'updated_at'
    ];

    public function factures()
    {
        return $this->hasMany(Facture::class);
    }
}
