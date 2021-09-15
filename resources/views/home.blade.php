@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <strong>Welcome {{Auth()->user()->name}}</strong><br><br>
                    {{ __('You are logged in!') }}<br><br>
                    <!--<add-btn></add-btn>-->
                    <a href="{{url('/')}}"><button class="btn btn-secondary">Book An Appointment</button></a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
