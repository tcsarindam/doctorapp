@extends('admin.layouts.master')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
          @if(Session::has('message'))
              <div class="alert alert-success">
                  {{Session::get('message')}}
              </div>
          @endif
            <div class="card">
                <div class="card-header">Appointments({{$bookings->count()}})</div>


                <div class="card-body">
                   <table class="table table-striped">
                       <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Photo</th>
                          <th scope="col">Date</th>
                          <th scope="col">User</th>
                          <th scope="col">Email</th>
                          <th scope="col">Phone</th>
                          <th scope="col">Gender</th>
                          <th scope="col">Time</th>                           
                          <th scope="col">Doctor</th>
                          <th scope="col">Status</th>
                          <th scope="col">Prescription</th>
                       </tr>
                       </thead>
                       <tbody>
                        @forelse($bookings as $key=>$booking)
                        <tr>
                          <td scope="row">{{$key+1}}</td> 
                          @if($booking->user->image!='')
                          <td><img src="/profile/{{$booking->user->image}}" width="40" style="border-radius: 50%"></td> 
                          @else
                          <td><img src="/images/default-user-image.png" width="40" style="border-radius: 50%"></td> 
                          @endif
                          <td>{{$booking->date}}</td> 
                          <td>{{$booking->user->name}}</td>
                          <td>{{$booking->user->email}}</td>
                          <td>{{$booking->user->phone_number}}</td>
                          <td>{{$booking->user->gender}}</td>
                          <td>{{$booking->time}}</td>
                          <td>{{$booking->doctor->name}}</td>
                          <td>
                               @if($booking->status == 0)
                               Pending
                               @else
                               Checked
                                
                               @endif
                          </td>
                          <td>
                          @if($booking->status == 1)
                          <!-- Button trigger modal -->
                            @if(!App\Prescription::where('date',date('Y-m-d'))->where('doctor_id',auth()->user()->id)->where('user_id',$booking->user->id)->exists())
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal{{$booking->user_id}}">
                                  Write prescription
                                </button>
                                @include('prescription.form')
                            @else 
                            <a href="{{route('prescription.show',[$booking->user_id,$booking->date])}}" class="btn btn-secondary">View prescription</a>
                            @endif
                          @else
                            No-Check-In
                          @endif
                          </td>
                        </tr>
                        @empty
                        <tr><td colspan="11">There is no appointment today</td></tr>                        
                        @endforelse
                       </tbody>
                   </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
