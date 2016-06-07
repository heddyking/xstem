$(function(){
 
	getPayments();
	
})


function getPayments(){
	var url="/hr/getCareerLastMonth";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		for(var k=0;k<msg.length;k++){
			msg[k].salary=msg[k].attendancehours*50;
			msg[k].bonus=msg[k].performancehours*70;
			msg[k].total=msg[k].salary+msg[k].bonus;
			msg[k].operation='<button class="btn btn-primary btn-xs edit" data-toggle="modal" data-target="#myModal" >Detail</button>';
		}
        
		initialBarChart(msg);
		
		var table = $('#example').DataTable({
			data: msg,
			columns:[
			         { title: "STE ID", data:"steid"},
			         { title: "STE", data:"name"},
			         { title: "Position", data:"positionname"},
			         { title: "Department", data:"departmentname"},
			         { title: "Attendance Num", data:"attendancenums"},
			         { title: "Attendance Hours", data:"attendancehours"},
			         { title: "Salary", data:"salary"},
			         { title: "Performance Num", data:"performancenums"},
			         { title: "Performance Hours", data:"performancehours"},
			         { title: "Bonus", data:"bonus"},
			         { title: "Month", data:"month"},
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
			"pageLength": 5,
			"bDestroy":true,
			responsive: true
		}); 
		
		$('#example tbody').off( 'click', 'button');
		$('#example tbody').on( 'click', 'button', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//			alert( JSON.stringify(data));
//			alert($(this).html())
			if($(this).html()=="Detail"){
				showDetail(data);
			}
		});
	}

	ajax(url,type,data,cb);
}

function initialBarChart(msg){
	/*lbs = ["January", "February", "March", "April", "May", "June", "July"];
    ds1 = [65, 59, 80, 81, 56, 55, 40];
	ds2 = [28, 48, 40, 19, 86, 27, 90];*/
	
	var lbs=[];
	var ds1=[];
	var ds2=[];
	
	for(var k=0;k<msg.length;k++){
		lbs.push(msg[k].steid+":"+msg[k].name);
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
	
	var barChartCanvas = $("#barChart").get(0).getContext("2d");
    var barChart = new Chart(barChartCanvas);
    var barChartData = areaChartData;
    barChartData.datasets[1].fillColor = "#00a65a";
    barChartData.datasets[1].strokeColor = "#00a65a";
    barChartData.datasets[1].pointColor = "#00a65a";
    var barChartOptions = {
      //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
      scaleBeginAtZero: true,
      //Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines: true,
      //String - Colour of the grid lines
      scaleGridLineColor: "rgba(0,0,0,.05)",
      //Number - Width of the grid lines
      scaleGridLineWidth: 1,
      //Boolean - Whether to show horizontal lines (except X axis)
      scaleShowHorizontalLines: true,
      //Boolean - Whether to show vertical lines (except Y axis)
      scaleShowVerticalLines: true,
      //Boolean - If there is a stroke on each bar
      barShowStroke: true,
      //Number - Pixel width of the bar stroke
      barStrokeWidth: 2,
      //Number - Spacing between each of the X value sets
      barValueSpacing: 5,
      //Number - Spacing between data sets within X values
      barDatasetSpacing: 1,
      //String - A legend template
      legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
      //Boolean - whether to make the chart responsive
//      responsive: true,
//      maintainAspectRatio: true
    };

    barChartOptions.datasetFill = false;
    var myChart =barChart.Bar(barChartData, barChartOptions);
    var legend = myChart.generateLegend();
//    $("#legend").html(legend);
}

function showDetail(msg){
	
}




