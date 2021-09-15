@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">My prescriptions</div>

                <div class="card-body">
                 
                  <table class="table table-striped">
                      <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Date</th>
                          <th scope="col">Doctor</th>
                          <th scope="col">Disease</th>
                          <th scope="col">Symptoms</th>
                          <th scope="col">medicine</th>
                          <th scope="col">procedure to use medicine</th>
                          <th scope="col">Doctor Feedback</th>
                          <th scope="col">Download/Print</th>
                        </tr>
                      </thead>
                      <tbody>
                        @forelse($prescriptions as $key=>$prescription)
                        <tr>
                          <th scope="row">{{$key+1}}</th>
                          <td>{{$prescription->Date}}</td>
                          <td>{{$prescription->doctor->name}}</td>
                          <td>{{$prescription->name_of_disease}}</td>
                          <td>{{$prescription->symptoms}}</td>
                          <td>{{$prescription->medicine}}</td>
                          <td>{{$prescription->procedure_to_use_medicine}}</td>
                          <td>{{$prescription->feedback}}</td>
                          <td><a href="{{route('prescription.print',[$prescription->id])}}"><b>Click Here</b></a></td>
                        </tr>
                        @empty
                        <td colspan="9">You have no prescriptions</td>
                        @endforelse
                       
                      </tbody>
                    </table>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
