$(function(){
	getApplications();
})

function getApplications(){
	var url="/hr/getApplymentListHRChecking";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		for(var k=0;k<msg.length;k++){
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true);
			msg[k].operation='<button class="btn btn-primary btn-xs edit">Detail</button> <button class="btn btn-success btn-xs edit">Approve</button> <button class="btn btn-danger btn-xs delete">Deny</button>';
			msg[k].recruitnumber='<small class="label bg-blue" margin-top="-2px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+msg[k].realnumber+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>';
			
			msg[k].skills_req="";
			msg[k].skills_req+=msg[k].skill_req1?(", "+msg[k].skill_req1):"";
			msg[k].skills_req+=msg[k].skill_req2?(", "+msg[k].skill_req2):"";
			msg[k].skills_req+=msg[k].skill_req3?(", "+msg[k].skill_req3):"";
			msg[k].skills_req+=msg[k].skill_req4?(", "+msg[k].skill_req4):"";
			msg[k].skills_req+=msg[k].skill_req5?(", "+msg[k].skill_req5):"";
			if(msg[k].skills_req.length>=2) msg[k].skills_req=msg[k].skills_req.substring(2,msg[k].skills_req.length);
			var skillArr_req=[];
			if(msg[k].skill_req1) skillArr_req.push(msg[k].skill_req1);
			if(msg[k].skill_req2) skillArr_req.push(msg[k].skill_req2);
			if(msg[k].skill_req3) skillArr_req.push(msg[k].skill_req3);
			if(msg[k].skill_req4) skillArr_req.push(msg[k].skill_req4);
			if(msg[k].skill_req5) skillArr_req.push(msg[k].skill_req5);
			
			var skillArr=eval("("+msg[k].skills+")");
			msg[k].skills="";
			for(var i=0;i<skillArr.length;i++){
				msg[k].skills+=skillArr[i]+", ";
			}
			if(msg[k].skills.length>=2) msg[k].skills= msg[k].skills.substring(0,msg[k].skills.length-2);
			
			if(getSuggestion(skillArr_req,skillArr)){
				msg[k].suggestion='<small class="label bg-green" margin-top="-2px">suggested</small>';
			}
			else{
				msg[k].suggestion='<small class="label bg-red" margin-top="-2px">deprecated</small>';
			}
		}
        
		var table = $('#example').DataTable({
			data: msg,
			columns:[
			         { title: "Position", data:"positionname"},
			         { title: "Department", data:"departmentname"},
			         { title: "Plan Number", data:"recruitnumber"},
//			         { title: "Location Req", data:"location_req"},
			         { title: "Date Req", data:"date_req"},
//			         { title: "Duration Req", data:"duration_req"},
			         { title: "Skills Req", data:"skills_req"},
			         { title: "Candidate", data:"name"},
			         { title: "Email", data:"email"},
			         { title: "Skills", data:"skills"},
			         { title: "Suggestion", data:"suggestion"},
			         { title: "Applied At", data:"updatedat"},
			         { title: "Operation", data:"operation"}
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
			rowReorder: {
				selector: 'td:nth-child(2)'
			},
			responsive: true
		}); 
	}

	ajax(url,type,data,cb);
}

function getSuggestion(skills_req,skills){
	for(var k=0; k<skills.length;k++){
		for(var i=0;i<skills_req.length;i++){
			if(skills[k]==skills_req[i]){
				return true;
			}
		}
	}
	return false;
}

