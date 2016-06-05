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
	var url="/mg/getSTEListInDept";
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
			         rowReorder: {
			        	 selector: 'td:nth-child(2)'
			         },
			         responsive: true
		});
		
		$('#steTable tbody').off( 'click');
		$('#steTable tbody').on( 'click', 'tr td:gt(0)', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
			$('#stes').hide();
//			alert( JSON.stringify(data));
			setData(data);
		});
	}

	ajax(url,type,data,cb);
}



function searchOne(steid){
	var url="/mg/getSTEByID";
	var type="get";
	var data={steid:steid};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		if(!msg || !msg.name){
			alert("No STE found!");
			return;
		}

		setData(msg);
	}

	ajax(url,type,data,cb);
}



function setData(msg){
	$("#inputName").val(msg.name);
	$("input[name='gender'][value='"+msg.gender+"']").attr("checked",true); 
	$("#inputDate").val(msg.birthday);
	$("#inputEmail").val(msg.email);
	$("#otherEmail").val(msg.email_self);
	$("#inputTelephone").val(msg.telephone);
	$("#Phone").val(msg.phone);
	$("#inputLocation").val(msg.location);
	$("#inputSkills").val(eval("("+msg.skills+")")).select2();
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