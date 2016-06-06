$(function(){
	getPositions();
})

function getPositions(){
	var url="/getPoolList";
	var type="get";
	var data={};
	var cb=function(msg){
		for(var k=0;k<msg.length;k++){
			msg[k].operation='<button class="btn btn-primary btn-xs">Apply</button>';
			msg[k].updatedat2=getSmpFormatDateByLong(msg[k].updatedat2,true);
			msg[k].skills="";
			msg[k].skills+=msg[k].skill_req1?(", "+msg[k].skill_req1):"";
			msg[k].skills+=msg[k].skill_req2?(", "+msg[k].skill_req2):"";
			msg[k].skills+=msg[k].skill_req3?(", "+msg[k].skill_req3):"";
			msg[k].skills+=msg[k].skill_req4?(", "+msg[k].skill_req4):"";
			msg[k].skills+=msg[k].skill_req5?(", "+msg[k].skill_req5):"";
			if(msg[k].skills.length>=2) msg[k].skills=msg[k].skills.substring(2,msg[k].skills.length);
			msg[k].recruitnumber='<small class="label bg-blue" margin-top="-2px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+msg[k].realnumber+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>';
		}
		
		var table=$('#example2').DataTable({
		      data:msg,
		      columns:[
		      		{title: "Job Position Name", data:"positionname"},
		      		{title: "Number", data:"recruitnumber"},
		      		{title: "Department Name", data:"departmentname"},
		      		{title: "Location", data:"location_req"},
		      		{title: "Onboard Date", data:"date_req"},
		      		{title: "Duration(Month)", data:"duration_req"},
		      		{title: "Skills Requirement", data:"skills"},
		      		{title: "Publish Date", data:"updatedat2"},
		      		{title: "Operation", data:"operation"}
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
		        
		        checkInfo(data);
		    });
	}
	
	ajax(url,type,data,cb);
}

function checkInfo(params){
	var url="/ste/personalInfo";
	var type="get";
	var data={};
	var cb=function(msg){
		if(!msg.name
		|| msg.gender==null
		|| !msg.birthday
		|| !msg.email
		|| !msg.telephone
		|| !msg.skills
		|| !msg.experiences
		|| !msg.resume_url){
			alert("Please fulfill your personnel information!");
			window.location.href = "/pages_ste/info.html";
			return;
		}
		checkApplyment(params);
	}
	
	ajax(url,type,data,cb);
}

function checkApplyment(params){
	var url="/ste/getSelfActiveApplyment";
	var type="get";
	var data={};
	var cb=function(msg){
		if(msg){
			alert("You still have Active Applyment, Please delete it and re-apply!");
			window.location.href = "/pages_ste/application.html";
			return;
		}
		apply(params);
	}

	var eb=function(msg){
		apply(params);
	}
	
	ajax(url,type,data,cb,eb);
}

function apply(data){
	var url="/ste/addApplyment";
	var type="get";
	var data={positionid:data.positionid};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		
		alert("Apply Successfully!")
		window.location.href = "/pages_ste/application.html";
	}
	
	ajax(url,type,data,cb);
}