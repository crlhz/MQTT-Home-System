@extends('layouts.app')

@section('content')
<div class="container-sm" id="chart"></div>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script>
 var values = <?php echo json_encode($values)?>;
 var dates = <?php echo json_encode($dates)?>;
 var topic_name = <?php echo json_encode($topic_name) ?>;
 
const dataset = {
  "xData": dates,
  data: values
};

 const processedData = dataset.data.map((dataEl, i) => {
  return [new Date(dataset.xData[i]).getTime(), dataEl] // x, y format
});

Highcharts.chart('chart', {

  chart: {
    margin: 80,
    height: 600,
    backgroundColor: "#b8b8b8",
    borderRadius: 20,
  },
  title: {
    text: topic_name
  },
  xAxis: {
    type: 'datetime',
    labels: {
      format: '{value:%Y-%m-%d %H:%M}',
      style: {
            fontSize: "15px"
        }
    }
  },
  yAxis: [{
    title: {
      text: null
    },
    labels: {
        style: {
            fontSize: "15px"
        }
    }
  }],
  series: [{
    data: processedData,
    showInLegend: false,
  }]
});

</script>

@endsection
