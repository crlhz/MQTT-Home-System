@extends('layouts.app')

@section('content')
<div class="container">
        @for($i =0; $i < $rows; $i++)
            <div class="row">
                @for($j =0; $j < 3; $j++)
                    <div class="col">
                        <div class="item" onclick="location.href='chart/'+'{{$topic[$i*3+$j]->id}}';" style="cursor: pointer;"> 
                            <div class="temp-item" >
                                {{$measurment[$i*3+$j]}}{{$topic[$i*3+$j]->unit}}
                            </div>
                            <div class="theme-item">
                                {{$topic[$i*3+$j]->name}}
                            </div>
                        </div>
                    </div>
                @endfor 
            </div> 
        @endfor

        @if($rest>0)
        <div class="row">
                @for($j =0; $j < $rest; $j++)
                    <div class="col">
                        <div class="item" onclick="location.href='chart/'+'{{$topic[$i*3+$j]->id}}';" style="cursor: pointer;">
                            <div class="temp-item">
                            {{$measurment[$i*3+$j]}}{{$topic[$i*3+$j]->unit}}
                            </div>
                            <div class="theme-item">
                                {{$topic[$rows*3+$j]->name}}
                            </div>
                        </div>
                    </div>
                @endfor 
            </div> 
        @endif
</div>


@endsection
