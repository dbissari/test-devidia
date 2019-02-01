@extends('base')

@section('title')
    Client
@endsection

@section('content')
    <br>
    <div class="col-sm-offset-4 col-sm-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Fiche client</h3>
            </div>
            <div class="panel-body">
                <p>Nom : {{ $client->nom }}</p>
                <p>Telephone : {{ $client->telephone }}</p>
                <p>Email : {{ $client->email }}</p>
                <p>Créé le : {{ $client->created_at }}</p>
                <p>Modifié le : {{ $client->updated_at }}</p>
            </div>
        </div>
        <a href="javascript:history.back()" class="btn btn-primary">< Retour</a>
    </div>
@endsection