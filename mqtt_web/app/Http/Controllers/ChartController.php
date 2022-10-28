<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Measurment;
use App\Models\Topic;
use \Datetime;


class ChartController extends Controller
{
    public function index($id){
        
        $date = new DateTime;
        $date->modify('-3 days');
        $formatted_date = $date->format('Y-m-d H:i:s');
        
        $values = Measurment::select('value')->where('topic_id','=',$id)->where('created_at','>=',$formatted_date)->pluck('value',);
        $dates = Measurment::select('updated_at')->where('topic_id','=',$id)->where('created_at','>=',$formatted_date)->pluck('updated_at',);
        $topic_name = Topic::where('id','=',$id)->pluck('name');
        
        #return view('chart', compact('values'), compact('dates'),compact('topic_name'));
        return view('chart', ['values'=>$values, 'dates'=>$dates, 'topic_name'=>$topic_name]);
      
        
    }
}
