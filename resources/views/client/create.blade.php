@extends('base')

@section('title')
    Client
@endsection

@section('content')
    <br>
    <div class="col-sm-offset-4 col-sm-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Création d'un client</h3>
            </div>
            <div class="panel-body">
                <div class="col-xs-12">
                    {!! Form::open(['route'=>'client.store', 'class'=>'form-horizontal panel']) !!}
                    <div class="form-group {!! $errors->has('nom') ? 'has-error' : '' !!}">
                        {!! $errors->first('nom', '<small class="help-block">:message<small/>') !!}
                        {!! Form::text('nom', null, ['placeholder'=>'Nom', 'class'=>'form-control']) !!}
                    </div>
                    <div class="form-group {!! $errors->has('telephone') ? 'has-error' : '' !!}">
                        {!! $errors->first('telephone', '<small class="help-block">:message<small/>') !!}
                        {!! Form::text('telephone', null, ['placeholder'=>'Telephone', 'class'=>'form-control']) !!}
                    </div>
                    <div class="form-group {!! $errors->has('email') ? 'has-error' : '' !!}">
                        {!! $errors->first('email', '<small class="help-block">:message<small/>') !!}
                        {!! Form::email('email', null, ['placeholder'=>'Email', 'class'=>'form-control']) !!}
                    </div>
                    {!! Form::submit('Envoyer', ['class'=>'btn btn-primary pull-right']) !!}
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
        <a href="javascript:history.back()" class="btn btn-primary">< Retour</a>
    </div>
@endsection