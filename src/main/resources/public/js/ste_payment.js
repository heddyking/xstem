$(function(){
	getPayments();
})

function getPayments(){
	var url="/ste/getCareerEachMonthBySTE";
	var type="get";
	var data={};
	var cb=function(msg){
		for(var k=0;k<msg.length;k++){
			msg[k].salary=msg[k].attendancehours*50;
			msg[k].bonus=msg[k].performancehours*70;
			msg[k].total=msg[k].salary+msg[k].bonus;
			msg[k].operation='<button class="btn btn-primary btn-xs edit" data-toggle="modal" data-target="#myModal" >Detail</button>';
		}
		
		initialLineChart(msg);
		
		var table=$('#example2').DataTable({
		      data:msg,
		      columns:[
		             { title: "Month", data:"month"},
			         { title: "Attendance Num", data:"attendancenums"},
			         { title: "Attendance Hours", data:"attendancehours"},
			         { title: "Salary", data:"salary"},
			         { title: "Performance Num", data:"performancenums"},
			         { title: "Performance Hours", data:"performancehours"},
			         { title: "Bonus", data:"bonus"},
			         { title: "Total", data:"total"}
//			         { title: "Operation", data:"operation"}
		      ],
		      "order": [[ 0, "desc" ]],
		      "paging": true,
		      "lengthChange": false,
		      "searching": false,
		      "ordering": true,
		      "info": true,
		      "autoWidth": false,
		      "pageLength": 15,
		      "bDestroy":true,
//		      rowReorder: {
//		            selector: 'td:nth-child(2)'
//		      },
		      responsive: true
		    });
			
			$('#example2 tbody').off( 'click','button');
		    $('#example2 tbody').on( 'click', 'button', function () {
		        var data = table.row( $(this).parents('tr')).data();
		        if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//		        alert( JSON.stringify(data));
		        if($(this).html()=="Detail"){
					showDetail(data);
				}
		    });
	}
	
	ajax(url,type,data,cb);
}

function initialLineChart(msg){
	/*lbs = ["January", "February", "March", "April", "May", "June", "July"];
    ds1 = [65, 59, 80, 81, 56, 55, 40];
	ds2 = [28, 48, 40, 19, 86, 27, 90];*/
	
	var lbs=[""];
	var ds1=[0];
	var ds2=[0];
	
	for(var k=msg.length-1;k>=0;k--){
		lbs.push(msg[k].month);
		ds1.push(msg[k].salary);
		ds2.push(msg[k].bonus);
	}
	
	var areaChartData = {
		      labels: lbs,
		      datasets: [
		        {
		          label: "Salary",
		          fillColor: "#337ab7",
		          strokeColor: "#337ab7",
		          pointColor: "#337ab7",
		          pointStrokeColor: "#337ab7",
		          pointHighlightFill: "#337ab7",
		          pointHighlightStroke: "#337ab7",
		          data: ds1
		        },
		        {
		          label: "Bonus",
		          fillColor: "#00a65a",
		          strokeColor: "#00a65a",
		          pointColor: "#00a65a",
		          pointStrokeColor: "#00a65a",
		          pointHighlightFill: "#00a65a",
		          pointHighlightStroke: "#00a65a",
		          data: ds2
		        }
		      ]
		    };

	var areaChartOptions = {
		      //Boolean - If we should show the scale at all
		      showScale: true,
		      //Boolean - Whether grid lines are shown across the chart
		      scaleShowGridLines: false,
		      //String - Colour of the grid lines
		      scaleGridLineColor: "rgba(0,0,0,.05)",
		      //Number - Width of the grid lines
		      scaleGridLineWidth: 1,
		      //Boolean - Whether to show horizontal lines (except X axis)
		      scaleShowHorizontalLines: true,
		      //Boolean - Whether to show vertical lines (except Y axis)
		      scaleShowVerticalLines: true,
		      //Boolean - Whether the line is curved between points
		      bezierCurve: true,
		      //Number - Tension of the bezier curve between points
		      bezierCurveTension: 0.3,
		      //Boolean - Whether to show a dot for each point
		      pointDot: false,
		      //Number - Radius of each point dot in pixels
		      pointDotRadius: 4,
		      //Number - Pixel width of point dot stroke
		      pointDotStrokeWidth: 1,
		      //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
		      pointHitDetectionRadius: 20,
		      //Boolean - Whether to show a stroke for datasets
		      datasetStroke: true,
		      //Number - Pixel width of dataset stroke
		      datasetStrokeWidth: 2,
		      //Boolean - Whether to fill the dataset with a color
		      datasetFill: true,
		      //String - A legend template
		      legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].lineColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
		      //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
		      //maintainAspectRatio: true,
		      //Boolean - whether to make the chart responsive to window resizing
		      //responsive: true
		    };
		    
	var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
    var lineChart = new Chart(lineChartCanvas);
    var lineChartOptions = areaChartOptions;
    lineChartOptions.datasetFill = false;
    lineChart.Line(areaChartData, lineChartOptions);
}

function showDetail(msg){
	
}
