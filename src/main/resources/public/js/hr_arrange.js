$(function(){
	initModal();
	getApplications();
})

function initModal(){
	initDateRange();
	initLocations();
	initCheckbox();
	initInterviewer();
	initPhone();
	initReplenish();
}

function initDateRange(){
	$('#rangeTime').daterangepicker({
		startDate: CurentDate()+" 09:00:00",
		endDate: CurentDate()+" 11:00:00",
		timePicker: true, 
		timePickerIncrement: 30,
		timePicker12Hour:false,  
		format: 'YYYY-MM-DD HH:mm:ss'
	});
}

function initLocations(){
	var url="/getSites";
	var type="get";
	var data={};
	var cb=function(msg){
		$("#inputLocation").html("<option></option>")
		for(var k=0;k<msg.length;k++){
			$("#inputLocation").append("<option>"+msg[k]+"</option>");
		}
		$("#inputLocation").select2();
	}
	
	ajax(url,type,data,cb);
}

function initCheckbox(){
	$('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
	      checkboxClass: 'icheckbox_flat-green',
	      radioClass: 'iradio_flat-green'
	}).iCheck("check");
}

function initInterviewer(departmentid){
	if(!departmentid){
		$("#inputInterviewer").html("");
		return;
	}
	
	var url="/hr/getMGbyDepartment";
	var type="get";
	var data={departmentid:departmentid};
	var cb=function(msg){
		$("#inputInterviewer").html("<option></option>");
		for(var k=0;k<msg.length;k++){
			$("#inputInterviewer").append("<option value='"+msg[k].fteid+"'>"+msg[k].name+"</option>");
		}
		$("#inputInterviewer").select2().on("change", function (e) { 
			initPhone($("#inputInterviewer").val());
		});
	}
	
	ajax(url,type,data,cb);
}

function initPhone(fteid){
	if(!fteid){
		$("#inputPhone").val("");
		return;
	}
	
	var url="/hr/getFTE";
	var type="get";
	var data={fteid:fteid};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		$("#inputPhone").val(msg.phone)
		$("#mgEmail").val(msg.email);
	}
	var eb=function(msg){
		$("#inputPhone").val("");
	}
	
	ajax(url,type,data,cb,eb);
}

function initReplenish(){
	$("#inputReplenish").val("");
}

function getApplications(){
	var url="/hr/getApplymentListArranging";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		for(var k=0;k<msg.length;k++){
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true);
			msg[k].operation='<button class="btn btn-primary btn-xs edit" data-toggle="modal" data-target="#myModal" >Arrange Interview</button>';
			msg[k].genderStr=msg[k].gender?"Male":"Female";
		}
        
		var table = $('#example').DataTable({
			data: msg,
			columns:[
			         { title: "Candidate", data:"name"},
			         { title: "Gender", data:"genderStr"},
			         { title: "Email", data:"email"},
			         { title: "Telephone", data:"telephone"},
			         { title: "Position", data:"positionname"},
			         { title: "Department", data:"departmentname"},
//			         { title: "Plan Number", data:"recruitnumber"},
//			         { title: "Location Req", data:"location_req"},
			         { title: "Onboard At", data:"date_req"},
//			         { title: "Duration Req", data:"duration_req"},
//			         { title: "Skills Req", data:"skills_req"},
//			         { title: "Skills", data:"skills"},
//			         { title: "Suggestion", data:"suggestion"},
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
		
		$('#example tbody').off( 'click', 'button');
		$('#example tbody').on( 'click', 'button', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//			alert( JSON.stringify(data));
//			alert($(this).html())
			if($(this).html()=="Arrange Interview"){
				$("#a_id").val(data.applymentid);
				$("#steEmail").val(data.email);
				$("#steName").val(data.name);
				$("#steGender").val(data.gender);
				$("#steTelephone").val(data.telephone);
				var getUrl = window.location;
				var baseUrl = getUrl .protocol + "//" + getUrl.host;
				$("#resume").val(baseUrl+data.resume_url);
				$("#mgEmail").val("");
				initModal();
				initInterviewer(data.departmentid);
			}

		});
	}

	ajax(url,type,data,cb);
}

function arrangeInterview(){
	var applymentid=$("#a_id").val();
	var steEmail=$("#steEmail").val();
	var steName=$("#steName").val();
	var steGender=$("#steGender").val();
	var steTelephone=$("#steTelephone").val();
	var resume=$("#resume").val();
	var mgEmail=$("#mgEmail").val();
	var range=$('#rangeTime').val();
	var location=$("#inputLocation").val();
	var ref_id=$("#inputInterviewer").val();
	var contact_person=$("#inputInterviewer").select2('data')[0].text;
	var contact_phone=$("#inputPhone").val();
	var replenish=$("#inputReplenish").val();
	var mgSend=$("#isToMG").parent().hasClass("checked");
	var steSend=$("#isToSTE").parent().hasClass("checked");
	
//	alert(ref_id);
//	alert(contact_person);
	
	
	if(!applymentid || !steEmail || !steName) {alert("Please reselect the applyment again!");return;}
	if(!range) {alert("Please select the interview time!");return;}
	var i=range.indexOf(" - ");
	var from=range.substring(0,i);
	var to=range.substring(i+3,range.length);
	if(!location) {alert("Please select the interview location!");return;}
	if(!ref_id || !mgEmail || !contact_person){alert("Please re-select an interviewer!"); return;}
	if(!contact_phone){alert("Please input the contact number!"); return;}
	if(!phoneFormatCheck(contact_phone)){alert("Contact number wrong format!"); return;}
	
	var url="/hr/arrangeInterviewEmail";
	var type="get";
	var data={
			applymentid:applymentid,
			starttime:from, 
			endtime:to,
			location:location,
			contact_person:contact_person, 
			contact_phone:contact_phone,
			replenish:replenish,
			mgEmail:mgEmail, 
			steEmail:steEmail, 
			mgSend:mgSend, 
			steSend:steSend,
			steName:steName,
			steGender:steGender,
			steTelephone:steTelephone,
			resume:resume
	};
	
//	alert(JSON.stringify(data)); return;
	
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		
		$("#myModal").modal('hide');
		alert("Arrange An Interview Successfully!");
		getApplications();
	}
	ajax(url,type,data,cb);

}


