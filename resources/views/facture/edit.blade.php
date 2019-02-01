@extends('base')

@section('title')
    Client
@endsection

@section('content')
    <br>
    <div class="col-sm-offset-4 col-sm-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Modification d'une facture</h3>
            </div>
            <div class="panel-body">
            <div class="col-xs-12">
                {!! Form::model($facture, ['route'=>['facture.update', $facture->id], 'method'=>'put', 'class'=>'form-horizontal panel']) !!}
                <div class="form-group {!! $errors->has('client') ? 'has-error' : '' !!}">
                    <select name="client_id" id="client_id" class="form-control">
                        @foreach($clients as $client)
                            <option value="{{ $client->id }}">{{ $client->nom }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group {!! $errors->has('nom') ? 'has-error' : '' !!}">
                    {!! $errors->first('nom', '<small class="help-block">:message<small/>') !!}
                    {!! Form::text('nom', null, ['placeholder'=>'Nom', 'class'=>'form-control']) !!}
                </div>
                {!! Form::submit('Envoyer', ['class'=>'btn btn-primary pull-right']) !!}
                {!! Form::close() !!}
            </div>
            </div>
        </div>
        <a href="javascript:history.back()" class="btn btn-primary">< Retour</a>
    </div>
    <script>
        $('#client_id').val({{ $facture->client->id }});
    </script>
@endsection