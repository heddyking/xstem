$(function(){
	initSkills();
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

function click_search(){
	var q=$('#q').val();

	if(!q) {
		$('#stes').show();
		searchAll();
	}

	else{
		$('#stes').hide();
		searchOne(q);
	}
}

function searchAll(){
	var url="/hr/getSTEList";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		if(!msg || msg.length==0){
			alert("No STE found!");
			return;
		}

		var table = $('#steTable').DataTable({
			data: msg,
			columns:[
			         { title: "STE ID", data:"steid"},
			         { title: "Name", data:"name"},
			         { title: "Gender", data:"gender"},
			         { title: "Email", data:"email"},
			         { title: "Phone", data:"phone"},
			         { title: "Department", data:"departmentname"},
			         { title: "Position", data:"positionname"},
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
//			         "bRetrieve": true,
//			         rowReorder: {
//			        	 selector: 'td:nth-child(2)'
//			         },
			         responsive: true
		});

		$('#steTable tbody').off( 'click', 'tr td:not(.sorting_1)');
		$('#steTable tbody').on( 'click', 'tr td:not(.sorting_1)', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
			$('#stes').hide();
//			alert( JSON.stringify(data));
			clearAll();
			setData(data);
			getAttendance(data.steid);
			getPerformance(data.steid);
			getSkills(data.steid);
		});
	}

	ajax(url,type,data,cb);
}



function searchOne(steid){
	var url="/hr/getSTEByID";
	var type="get";
	var data={steid:steid};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		if(!msg || !msg.name){
			alert("No STE found!");
			return;
		}

		clearAll();
		setData(msg);
		getAttendance(steid);
		getPerformance(steid);
		getSkills(steid);
	}

	ajax(url,type,data,cb);
}

function clearAll(){
	$("#inputName").val("");
	$("input[name='gender'][value='true']").attr("checked",true); 
	$("#inputDate").val("");
	$("#inputEmail").val("");
	$("#otherEmail").val("");
	$("#inputTelephone").val("");
	$("#Phone").val("");
	$("#inputLocation").val("");
	$("#inputSkills").val("").select2();
	$("#inputExperience").val("");

	$("#resume_download").attr("href","");
	$("#resume_btn").html("No Resume");

	$("#offer_download").attr("href","");
	$("#offer_btn").html("No Offer");

	$("#contract_download").attr("href","");
	$("#contract_btn").html("No Contract");
	
	$('#example2').DataTable({
		data: [],
		columns:[
		         { title: "Date", data:"date"},
		         { title: "Hours", data:"hours"},
		         { title: "Updated At", data:"updatedat"},
		         { title: "Status", data:"status"}
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
//		rowReorder: {
//			selector: 'td:nth-child(2)'
//		},
		responsive: true
	});
	
	var table1= $('#example1').DataTable({
		data: [],
		columns:[
		         { title: "From", data:"from"},
		         { title: "To", data:"to"},
		         { title: "Hours", data:"hours"},
		         { title: "Description", data:"description"},
		         { title: "Updated At", data:"updatedat"},
		         { title: "Status", data:"status"}
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
//		rowReorder: {
//			selector: 'td:nth-child(2)'
//		},
		responsive: true
	});
	
	$("#skill_box").html("");
}

function setData(msg){
//	alert(JSON.stringify(msg));
	$("#inputName").val(msg.name);
	$("input[name='gender'][value='"+msg.gender+"']").attr("checked",true); 
	$("#inputDate").val(msg.birthday);
	$("#inputEmail").val(msg.email);
	$("#otherEmail").val(msg.email_self);
	$("#inputTelephone").val(msg.telephone);
	$("#Phone").val(msg.phone);
	$("#inputLocation").val(msg.location);

	try{
	    $("#inputSkills").val(eval("("+msg.skills+")")).select2();
	}catch(exp){}

	$("#inputExperience").val(msg.experiences);

	$("#resume_download").attr("href",msg.resume_url);
	if(!msg.resume_url) {
		$("#resume_btn").html("No Resume");
	}
	else {
		$("#resume_btn").html("Download Resume");
	}

	$("#offer_download").attr("href",msg.offer_url);
	if(!msg.offer_url) {
		$("#offer_btn").html("No Offer");
	}
	else {
		$("#offer_btn").html("Download Offer");
	}

	$("#contract_download").attr("href",msg.contract_url);
	if(!msg.contract_url) {
		$("#contract_btn").html("No Contract");
	}
	else {
		$("#contract_btn").html("Download Contract");
	}
}

function getAttendance(id){
	var url="/hr/getAttendanceListBySteid";
	var type="get";
	var data={steid:id};
	var cb=function(msg){
		for(var k=0;k<msg.length;k++){
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true);
			if(msg[k].state==2) msg[k].status='<small class="label bg-green" margin-top="-2px">Approved</small>'
			else if(msg[k].state==1) msg[k].status='<small class="label bg-yellow" margin-top="-2px">Pending</small>'
			else if(msg[k].state==3) msg[k].status='<small class="label bg-red" margin-top="-2px">Rejected</small>'
		}
		
		var table2 = $('#example2').DataTable({
			data: msg,
			columns:[
			         { title: "Date", data:"date"},
			         { title: "Hours", data:"hours"},
			         { title: "Updated At", data:"updatedat"},
			         { title: "Status", data:"status"}
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
//			rowReorder: {
//				selector: 'td:nth-child(2)'
//			},
			responsive: true
		});
	}

	ajax(url,type,data,cb);
}

function getPerformance(id){
	var url="/hr/getPerformanceListBySteid";
	var type="get";
	var data={steid:id};
	var cb=function(msg){
		for(var k=0;k<msg.length;k++){
			msg[k].to=getSmpFormatDateByLong(msg[k].week_lastday,false);
			msg[k].from=getSmpFormatDateByLong(msg[k].week_firstday,false);
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true);
			if(msg[k].state==2) msg[k].status='<small class="label bg-green" margin-top="-2px">Approved</small>'
			else if(msg[k].state==1) msg[k].status='<small class="label bg-yellow" margin-top="-2px">Pending</small>'
		    else if(msg[k].state==3) msg[k].status='<small class="label bg-red" margin-top="-2px">Rejected</small>'
		}
		
		var table1= $('#example1').DataTable({
			data: msg,
			columns:[
			         { title: "From", data:"from"},
			         { title: "To", data:"to"},
			         { title: "Hours", data:"hours"},
			         { title: "Description", data:"description"},
			         { title: "Updated At", data:"updatedat"},
			         { title: "Status", data:"status"}
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
//			rowReorder: {
//				selector: 'td:nth-child(2)'
//			},
			responsive: true
		});
	}

	ajax(url,type,data,cb);
}

function getSkills(id){
	var url="/hr/getSkillListBySteid";
	var type="get";
	var data={steid:id};
	var cb=function(msg){
		$("#skill_box").html("");
		for(var k=0;k<msg.length;k++){
			if(msg[k].state==2) {
				$("#skill_box").append('<span class="label label-success">'+msg[k].skill+' -- '+msg[k].score+' scores</span><br/><br/>');
			}
			else if(msg[k].state==1) {
				$("#skill_box").append('<span class="label label-warning">'+msg[k].skill+' -- pending</span><br/><br/>');
			}
			else if(msg[k].state==3) {
				$("#skill_box").append('<span class="label label-danger">'+msg[k].skill+' -- rejected</span><br/><br/>');
			}
		}
	}

	ajax(url,type,data,cb);
}





