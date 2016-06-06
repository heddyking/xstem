$(function(){
   initSkills();
   getAllPositions();
})

function initSkills(){
	var url="/getSkills";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(msg.length);
//		$(".select2").select2();
		$("select[id^='inputSkills']").html("")
		for(var k=0;k<msg.length;k++){
			$("select[id^='inputSkills']").append("<option>"+msg[k]+"</option>");
		}
	}
	
	ajax(url,type,data,cb);
}

var positions=[];

function getAllPositions(){
	var url="/mg/getPositionList";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		positions=msg;
		for(var k=0;k<msg.length;k++){
			msg[k].operations='<button class="btn btn-primary btn-xs edit" data-toggle="modal" data-target="#myModal">Edit</button> <button class="btn btn-danger btn-xs delete">Delete</button>';
			msg[k].skills="";
			msg[k].skills+=msg[k].skill_req1?(", "+msg[k].skill_req1):"";
			msg[k].skills+=msg[k].skill_req2?(", "+msg[k].skill_req2):"";
			msg[k].skills+=msg[k].skill_req3?(", "+msg[k].skill_req3):"";
			msg[k].skills+=msg[k].skill_req4?(", "+msg[k].skill_req4):"";
			msg[k].skills+=msg[k].skill_req5?(", "+msg[k].skill_req5):"";
			if(msg[k].skills.length>=2) msg[k].skills=msg[k].skills.substring(2,msg[k].skills.length);
		}
		
		var table = $('#example').DataTable({
			"data": msg,
			"columns":[
			    { title: "Position", data:"positionname"},
			    { title: "Plan Number", data:"number"},
			    { title: "Location", data:"location_req"},
			    { title: "Onboard", data:"date_req"},
			    { title: "Duration", data:"duration_req"},
			    { title: "Skills", data:"skills"},
			    { title: "Operations", data:"operations"}
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
//	        rowReorder: {
//	              selector: 'td:nth-child(2)'
//	        },
	        responsive: true
	   }); 

	  $('#example tbody').off( 'click', 'button');
	  $('#example tbody').on( 'click', 'button', function () {
	      var data = table.row( $(this).parents('tr')).data();
	      if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//	      alert( JSON.stringify(data));

	      if($(this).html()=="Edit"){
	    	  $("#edit_mode").show();
	    	  $("#add_mode").hide();
	    	  
	    	  $("#p_id").val(data.positionid);
	    	  $("#inputPosition").val(data.positionname);
	    	  $("#inputNumber").val(data.number);
	    	  $("#inputLocation").val(data.location_req);
	    	  $("#inputDate").val(data.date_req);
	    	  $("#inputDuration").val(data.duration_req);
	    	  $("#inputDescription").val(data.description);
	    	  var skills=[];
	    	  if(data.skill_req1) skills.push(data.skill_req1);
	    	  if(data.skill_req2) skills.push(data.skill_req2);
	    	  if(data.skill_req3) skills.push(data.skill_req3);
	    	  if(data.skill_req4) skills.push(data.skill_req4);
	    	  if(data.skill_req5) skills.push(data.skill_req5);
	    	  $("#inputSkills").val(skills).select2();
	      }
	      else if($(this).html()=="Delete"){
	    	  delPosition(data.positionid);
	      }
	   });
	}
	
	ajax(url,type,data,cb);
}

function addPosition(){
	var positionname=$("#inputPosition").val();
	var number=$("#inputNumber").val();
	var location_req=$("#inputLocation").val();
	var date_req=$("#inputDate").val();
	var duration_req=$("#inputDuration").val();
	var skills=$("#inputSkills").val();
	var description=$("#inputDescription").val();
	
//	alert(positionname+" "+number+" "+location_req+" "+date_req+" "+duration_req+" "+skills+" "+description);
//	alert(skills[0])
	
	
	if(!positionname){alert("Please input Position Name!");return;}
	if(positionname.length>32){alert("Position Name is too long!");return;}
	for(var k=0;k<positions.length;k++){
		if(positionname==positions[k].positionname){
			alert("Already having the position! Please change a Name");
			return;
		}
	}
	if(!number){alert("Please input Number!");return;}
	if(!integerFormatCheck(number)){alert("Number wrong format!");return;}
	if(!location_req){alert("Please input Location!");return;}
	if(location_req.length>32){alert("Location is too long!");return;}
	if(!date_req){alert("Please input Onboard Date!");return;}
	if(!dateFormatCheck(date_req)){alert("Onboard Date wrong Format!");return;}
	if(!duration_req){alert("Please input Duration!");return;}
	if(!integerFormatCheck(duration_req)){alert("Duration wrong format!");return;}
	if(!skills || skills.length<=0){alert("Please select required skills!");return;}
	if(!description){alert("Please input Description!");return;}
	if(description.length>64){alert("Description is too long!");return;}
	
	var json={
			positionname:positionname,
			number:number,
			location_req:location_req,
			date_req:date_req,
			duration_req:duration_req,
			skill_req1:skills[0],
			skill_req2:skills[1],
			skill_req3:skills[2],
			skill_req4:skills[3],
			skill_req5:skills[4],
			description:description
	}
	
	var url="/mg/addPosition";
	var type="post";
	var data={jsonStr:JSON.stringify(json)};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error");
			return;
		}
		
		alert("Add Position Successfully!");
		
		clearForm();
		getAllPositions();
	}
	
	ajax(url,type,data,cb);
}

function delPosition(id){
	url="/mg/deletePosition";
	type="get";
	data={positionid:id};
	cb=function(msg){
		if(msg!=1){
			alert("System Error!");
			return;
		}
		
		alert("Delete Successfully!");
		getAllPositions();
	}
	
	ajax(url,type,data,cb);
}

function updatePosition(){
	var p_id=$("#p_id").val();
	var positionname=$("#inputPosition").val();
	var number=$("#inputNumber").val();
	var location_req=$("#inputLocation").val();
	var date_req=$("#inputDate").val();
	var duration_req=$("#inputDuration").val();
	var skills=$("#inputSkills").val();
	var description=$("#inputDescription").val();
	
//	alert(positionname+" "+number+" "+location_req+" "+date_req+" "+duration_req+" "+skills+" "+description);
//	alert(skills[0])
	
	if(!p_id){alert("Please reselect the position to edit"); return;}
	if(!positionname){alert("Please input Position Name!");return;}
	if(positionname.length>32){alert("Position Name is too long!");return;}
	if(!number){alert("Please input Number!");return;}
	if(!integerFormatCheck(number)){alert("Number wrong format!");return;}
	if(!location_req){alert("Please input Location!");return;}
	if(location_req.length>32){alert("Location is too long!");return;}
	if(!date_req){alert("Please input Onboard Date!");return;}
	if(!dateFormatCheck(date_req)){alert("Onboard Date wrong Format!");return;}
	if(!duration_req){alert("Please input Duration!");return;}
	if(!integerFormatCheck(duration_req)){alert("Duration wrong format!");return;}
	if(!skills || skills.length<=0){alert("Please select required skills!");return;}
	if(!description){alert("Please input Description!");return;}
	if(description.length>64){alert("Description is too long!");return;}
	
	var json={
			positionid:p_id,
			positionname:positionname,
			number:number,
			location_req:location_req,
			date_req:date_req,
			duration_req:duration_req,
			skill_req1:skills[0],
			skill_req2:skills[1],
			skill_req3:skills[2],
			skill_req4:skills[3],
			skill_req5:skills[4],
			description:description
	}
	
	var url="/mg/updatePosition";
	var type="post";
	var data={jsonStr:JSON.stringify(json)};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error");
			return;
		}
		
		alert("Update Position Successfully!");
		
		cancelEdit();
		getAllPositions();
	}
	
	ajax(url,type,data,cb);
}

function cancelEdit(){
    $("#edit_mode").hide();
    $("#add_mode").show();
    clearForm();
}

function clearForm(){
	$("#inputPosition").val("");
	$("#inputNumber").val("1");
	$("#inputLocation").val("");
	$("#inputDate").val("");
	$("#inputDuration").val("6");
	$("#inputSkills").val("");
	$("#inputSkills").select2();
	$("#inputDescription").val("");
}