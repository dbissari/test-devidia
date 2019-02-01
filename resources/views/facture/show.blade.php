@extends('base')

@section('title')
    Facture
@endsection

@section('content')
    <br>
    <div class="col-sm-offset-4 col-sm-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Fiche facture</h3>
            </div>
            <div class="panel-body">
                <p>Nom : {{ $facture->nom }}</p>
                <p>Client : {{ $facture->client->nom }}</p>
                <p>Créé le : {{ $facture->created_at }}</p>
                <p>Modifié le : {{ $facture->updated_at }}</p>
            </div>
        </div>
        <a href="javascript:history.back()" class="btn btn-primary">< Retour</a>
    </div>
@endsection