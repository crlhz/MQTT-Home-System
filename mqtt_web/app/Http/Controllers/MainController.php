<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Measurment;
use App\Models\Topic;
use \Datetime;

class MainController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rows = intdiv(Topic::count(),3);
        $rest = Topic::count()%3;
        $measurments = array();

        $topics_id = Topic::pluck('id');

        $date = new DateTime;
        $date->modify('-10 minutes');
        $formatted_date = $date->format('Y-m-d H:i:s');

        foreach ($topics_id as $topic_id) {
            $try = Measurment::where('topic_id','=',$topic_id)->where('created_at','>=',$formatted_date)->select('value')->latest()->first();
            
            if ($try === null){
                $measurments[] = "N/A";
            }else{
                $measurments[] = Measurment::where('topic_id','=',$topic_id)->pluck("value")->last();
            }
        }

        return view('main', ['measurment' => $measurments, 'rows' => $rows, 'rest' => $rest, 'topic' => Topic::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
