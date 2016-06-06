$(function(){
	getAttendances();
})

function getAttendances(){
	var url="/ste/getAttendanceListBySteid";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		for(var k=0;k<msg.length;k++){
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true);
			msg[k].operations='<button class="btn btn-primary btn-xs edit" data-toggle="modal" data-target="#myModal">Edit</button> <button class="btn btn-danger btn-xs delete">Delete</button>';
			if(msg[k].state==2) msg[k].status='<small class="label bg-green" margin-top="-2px">Approved</small>'
			else if(msg[k].state==1) msg[k].status='<small class="label bg-yellow" margin-top="-2px">Pending</small>'
			else if(msg[k].state==3) msg[k].status='<small class="label bg-red" margin-top="-2px">Rejected</small>'
		}
		
		var table = $('#example2').DataTable({
			"data": msg,
			"columns":[
			    { title: "Date", data:"date"},
			    { title: "Hours", data:"hours"},
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
				$("#a_id").val(data.attendanceid);
				$("#inputDate2").val(getSmpFormatDateByLong(data.date,false));
				$("#inputHours2").val(data.hours);
			}
			else if($(this).html()=="Delete"){
				delAttendance(data.attendanceid);
			}
		});
	}

	ajax(url,type,data,cb);
}

function addAttendance(){
	var date=$("#inputDate").val();
	var hours=$("#inputHours").val();
	
	if(!date){alert("Please select Date!"); return;}
	if(!dateFormatCheck(date)){alert("Date wrong format");return;}
	if(!hours || hours==0){alert("Please select Hours!"); return;}
	if(!integerFormatCheck(hours)||hours<0||hours>24) {alert("Hours wrong format"); return;}
	
	var url="/ste/addAttendance";
	var type="get";
	var data={date:date,hours:hours};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		else{
			alert("Added Successfully!");
			getAttendances();
		}
	}

	ajax(url,type,data,cb);
}

function delAttendance(id){
	var url="/ste/deleteAttendance";
	var type="get";
	var data={attendanceid:id};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!")
			return;
		}
		alert("Deleted Successfully!");
		getAttendances();
	}
	
	ajax(url,type,data,cb);
}

function updateAttendance(){
	var id=$("#a_id").val();
	var date=$("#inputDate2").val();
	var hours=$("#inputHours2").val();
	
	if(!id || id<0){alert("Please Select and Edit Again!"); return;}
	if(!date){alert("Please select Date!"); return;}
	if(!dateFormatCheck(date)){alert("Date wrong format");return;}
	if(!hours || hours==0){alert("Please select Hours!"); return;}
	if(!integerFormatCheck(hours)||hours<0||hours>24) {alert("Hours wrong format"); return;}
	
	var url="/ste/updateAttendance";
	var type="get";
	var data={attendanceid:id,date:date,hours:hours};
	var cb=function(msg){
		if(msg!=1){
			$("#myModal").modal('hide'); 
			alert("System Error!");
			return;
		}
		$("#myModal").modal('hide'); 
		alert("Update Successfully!");
		getAttendances();
	}
	
	ajax(url,type,data,cb);
}
