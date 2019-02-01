@extends('base')

@section('title')
    Factures
@endsection

@section('content')
    <br>
    <div class="col-sm-offset-2 col-sm-8">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Liste des factures</h3>
            </div>
            <div class="panel-body table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($factures as $facture)
                        <tr>
                            <td>{!! $facture->id !!}</td>
                            <td>{!! $facture->nom !!}</td>
                            <td><a href="{{ route('facture.show', ['id'=>$facture->id]) }}" class="btn btn-success btn-block">Voir</a></td>
                            <td><a href="{{ route('facture.edit', ['id'=>$facture->id]) }}" class="btn btn-warning btn-block">Modifier</a></td>
                            <td>
                                {!! Form::open(['method'=>'DELETE', 'route'=>['facture.destroy', $facture->id]]) !!}
                                {!! Form::submit('Supprimer', ['class'=>'btn btn-danger btn-block']) !!}
                                {!! Form::close() !!}
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <td><a href="{{ route('facture.create') }}" class="btn btn-info pull-right">Ajouter un facture</a></td>
        {!! $links !!}
    </div>
@endsection