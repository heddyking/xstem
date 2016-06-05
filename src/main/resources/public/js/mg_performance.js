$(function(){
	getPerformances();
})

function getPerformances(){
	var url="/mg/getPerformanceListByDepartment";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		for(var k=0;k<msg.length;k++){
			msg[k].to=getSmpFormatDateByLong(msg[k].week_lastday,false);
			msg[k].from=getSmpFormatDateByLong(msg[k].week_firstday,false);
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true);
			msg[k].operations='<button class="btn btn-success btn-xs edit">Approve</button> <button class="btn btn-danger btn-xs delete">Deny</button>';
		}
		
		var table = $('#example2').DataTable({
			"data": msg,
			"columns":[
				{ title: "STE ID", data:"steid"},
				{ title: "STE Name", data:"name"},
				{ title: "Date From", data:"from"},
				{ title: "Date To", data:"to"},
				{ title: "Hours", data:"hours"},
				{ title: "Description", data:"description"},
				{ title: "Updated At", data:"updatedat"},
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
			rowReorder: {
			     selector: 'td:nth-child(2)'
			},
			responsive: true
		});

		$('#example2 tbody').off( 'click');
		$('#example2 tbody').on( 'click', 'button', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//			alert( JSON.stringify(data));
//			alert($(this).html())
			if($(this).html()=="Approve"){
				approvePerformance(data.performanceid);
			}
			else if($(this).html()=="Deny"){
				denyPerformance(data.performanceid);
			}
		});
	}

	ajax(url,type,data,cb);
}


function approvePerformance(id){
	var url="/mg/approvePerformance";
	var type="get";
	var data={performanceid:id};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!");
			return;
		}
		alert("Approved One Records!");
		getPerformances();
	}
	
	ajax(url,type,data,cb);
}

function denyPerformance(id){
	var url="/mg/rejectPerformance";
	var type="get";
	var data={performanceid:id};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!");
			return;
		}
		alert("Rejected One Records!");
		getPerformances();
	}
	
	ajax(url,type,data,cb);
}






