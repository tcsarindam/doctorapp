@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
             
              <div class="card-header lead">
                Patient Name: {{$prescription->user->name}}<br>
                Doctor Name: {{$prescription->doctor->name}}    
                </div>

                <div class="card-body">
                    <p>Date:{{$prescription->date}}</p>
                    <p>Patient:{{$prescription->user->name}}</p>
                    <p>Doctor:{{$prescription->doctor->name}}</p>
                    <p>Disease:{{$prescription->name_of_disease}}</p>
                    <p>Symptoms:{{$prescription->symptoms}}</p>
                    <p>Medicine:{{$prescription->medicine}}</p>
                    <p>Proedure to use medicine:{{$prescription->procedure_to_use_medicine}}</p>
                    <p>Feedback:{{$prescription->feedback}}</p>
                    

                  
                </div>
                <div class="card-footer">
                    <p>Doctor signature: {{$prescription->signature}}</p>
                    <br><br><br><br><br>
                    <p style="text-align: center;">This is a system generated presription by DOCTORAPP. Hence no signature required.</p>
                    <div id="buttons">
                    <button class="btn btn-print" type="button" onclick="window.print(); return false;">Print</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
