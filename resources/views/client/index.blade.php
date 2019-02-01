@extends('base')

@section('title')
    Clients
@endsection

@section('content')
    <br>
    <div class="col-sm-offset-1 col-sm-10">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Liste des clients</h3>
            </div>
            <div class="panel-body table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Téléphone</th>
                        <th>Email</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($clients as $client)
                        <tr>
                            <td>{!! $client->id !!}</td>
                            <td>{!! $client->nom !!}</td>
                            <td>{!! $client->telephone !!}</td>
                            <td class="text-primary">{!! $client->email !!}</td>
                            <td><a href="{{ route('client.show', ['id'=>$client->id]) }}" class="btn btn-success btn-block">Voir</a></td>
                            <td><a href="{{ route('client.edit', ['id'=>$client->id]) }}" class="btn btn-warning btn-block">Modifier</a></td>
                            <td>
                                {!! Form::open(['method'=>'DELETE', 'route'=>['client.destroy', $client->id]]) !!}
                                {!! Form::submit('Supprimer', ['class'=>'btn btn-danger btn-block']) !!}
                                {!! Form::close() !!}
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <td><a href="{{ route('client.create') }}" class="btn btn-info pull-right">Ajouter un client</a></td>
        {!! $links !!}
    </div>
@endsection