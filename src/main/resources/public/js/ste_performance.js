$(function(){
	getPerformances();
})

function getPerformances(){
	var url="/ste/getPerformanceListBySteid";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		for(var k=0;k<msg.length;k++){
			msg[k].to=getSmpFormatDateByLong(msg[k].week_lastday,false);
			msg[k].from=getSmpFormatDateByLong(msg[k].week_firstday,false);
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true);
			msg[k].operations='<button class="btn btn-primary btn-xs edit" data-toggle="modal" data-target="#myModal">Edit</button> <button class="btn btn-danger btn-xs delete">Delete</button>';
			if(msg[k].state==2) msg[k].status='<small class="label bg-green" margin-top="-2px">Approved</small>'
			else if(msg[k].state==1) msg[k].status='<small class="label bg-yellow" margin-top="-2px">Pending</small>'
		    else if(msg[k].state==3) msg[k].status='<small class="label bg-red" margin-top="-2px">Rejected</small>'
		}
		
		var table = $('#example2').DataTable({
			"data": msg,
			"columns":[
			    { title: "Date From", data:"from"},
			    { title: "Date To", data:"to"},
			    { title: "Hours", data:"hours"},
			    { title: "Performance Description", data:"description"},
			    { title: "Updated At", data:"updatedat"},
			    { title: "Status", data:"status"},
			    { title: "Operations", data:"operations"}
			],
			"order": [[ 0, "desc" ]],
			"paging": true,
			"lengthChange": false,
			"searching": false,
			"ordering": true,
			"info": true,
			"autoWidth": false,
			"pageLength": 6,
			"bDestroy":true,
//			rowReorder: {
//			     selector: 'td:nth-child(2)'
//			},
			responsive: true
		});

		$('#example2 tbody').off( 'click', 'button');
		$('#example2 tbody').on( 'click', 'button', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//			alert( JSON.stringify(data));
//			alert($(this).html())
			if($(this).html()=="Edit"){
				$("#a_id").val(data.performanceid);
				$("#range2").val(data.from+" - "+data.to);
				$("#range2").daterangepicker({
					startDate:moment(data.from),
					endDate:moment(data.to),
					format: 'YYYY-MM-DD',
				    autoclose: true
				});
				
				$("#inputHours2").val(data.hours);
				$("#inputDescription2").val(data.description);
			}
			else if($(this).html()=="Delete"){
				delPerformance(data.performanceid);
			}
		});
	}

	ajax(url,type,data,cb);
}

function addPerformance(){
	var range=$("#range").val();
	var hours=$("#inputHours").val();
	var description=$("#inputDescription").val();
	
	if(!range){alert("Please select a Date Range"); return;}
	if(!dateRangeCheck(range)){alert("Date Range wrong format");return;}
	var i=range.indexOf(" - ");
	var from=range.substring(0,i);
	var to=range.substring(i+3,range.length);
	if(!dateFormatCheck(from)){alert("From Date wrong format");return;}
	if(!dateFormatCheck(to)){alert("To Date wrong format");return;}
	if(!hours || hours==0){alert("Please select Hours!"); return;}
	if(!integerFormatCheck(hours)||hours<0||hours>50) {alert("Hours wrong format"); return;}
	if(!description) {alert("Please input some description");return;}
	if(description.length>64){alert("Description is too long");return;}
	
	var url="/ste/addPerformance";
	var type="get";
	var data={from:from,to:to,hours:hours,description:description};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		else{
			alert("Added Successfully!");
			getPerformances();
		}
	}

	ajax(url,type,data,cb);
}

function delPerformance(id){
	var url="/ste/deletePerformance";
	var type="get";
	var data={performanceid:id};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!")
			return;
		}
		alert("Deleted Successfully!");
		getPerformances();
	}
	
	ajax(url,type,data,cb);
}

function updatePerformance(){
	var id=$("#a_id").val();
	var range=$("#range2").val();
	var hours=$("#inputHours2").val();
	var description=$("#inputDescription2").val();
	
	if(!id || id<0){alert("Please Select and Edit Again!"); return;}
	if(!range){alert("Please select a Date Range"); return;}
	if(!dateRangeCheck(range)){alert("Date Range wrong format");return;}
	var i=range.indexOf(" - ");
	var from=range.substring(0,i);
	var to=range.substring(i+3,range.length);
	if(!dateFormatCheck(from)){alert("From Date wrong format");return;}
	if(!dateFormatCheck(to)){alert("To Date wrong format");return;}
	if(!hours || hours==0){alert("Please select Hours!"); return;}
	if(!integerFormatCheck(hours)||hours<0||hours>24) {alert("Hours wrong format"); return;}
	if(!description) {alert("Please input some description");return;}
	if(description.length>64){alert("Description is too long");return;}
	
	var url="/ste/updatePerformance";
	var type="get";
	var data={performanceid:id,from:from,to:to,hours:hours,description:description};
	var cb=function(msg){
		if(msg!=1){
			$("#myModal").modal('hide'); 
			alert("System Error!");
			return;
		}
		$("#myModal").modal('hide'); 
		alert("Update Successfully!");
		getPerformances();
	}
	
	ajax(url,type,data,cb);
}
