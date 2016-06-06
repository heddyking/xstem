$(function(){
	initAgencies();
	getPositions();
	getPools();
})

function initAgencies(){
	var url="/getAgencies";
	var type="get";
	var data={};
	var cb=function(msg){
		$("#p_id").val("");
		$("#publishment").html("");
		for(var k=0;k<msg.length;k++){
			$("#publishment").append('<div><label><input id="'+'cb_'+msg[k].agencyid+'" type="checkbox" class="flat-red"><a target="_blank" href="'+msg[k].agency_url+'">'+msg[k].agencyname+'</a></label></div>');
		}
		rebuildCheckbox();
	}

	ajax(url,type,data,cb);
}

function rebuildCheckbox(){
	$('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
		checkboxClass: 'icheckbox_flat-green',
		radioClass: 'iradio_flat-green'
	});
	
	$('input[type="checkbox"]').on('ifClicked', function(event){
//		  alert($(this).parent().next().html());
//		 alert($(this).parent().attr("aria-checked"))
		
		 var pid=$("#p_id").val();
		 if(!pid) {
			 alert("Please select a pool!");
			 initAgencies();
			 return;
		 }
		 var aid=$(this).attr("id").substring(3,$(this).attr("id").length);
		 
		 if($(this).parent().attr("aria-checked")=="true"){
			 delPublished(pid,aid);
		 }
		 else{
			 addPublished(pid,aid);
		 }
	});
}

var positions=[];
function getPositions(){
	var url="/getTotalPositionList";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		positions=msg;
		for(var k=0;k<msg.length;k++){
			msg[k].operation='<button class="btn btn-primary btn-xs edit" >Add Into Pool</button>';
			msg[k].skills="";
			msg[k].skills+=msg[k].skill_req1?(", "+msg[k].skill_req1):"";
			msg[k].skills+=msg[k].skill_req2?(", "+msg[k].skill_req2):"";
			msg[k].skills+=msg[k].skill_req3?(", "+msg[k].skill_req3):"";
			msg[k].skills+=msg[k].skill_req4?(", "+msg[k].skill_req4):"";
			msg[k].skills+=msg[k].skill_req5?(", "+msg[k].skill_req5):"";
			if(msg[k].skills.length>=2) msg[k].skills=msg[k].skills.substring(2,msg[k].skills.length);
		}

		var table = $('#example').DataTable({
			data: msg,
			columns:[
			         { title: "Position ID", data:"positionid"},
			         { title: "Position", data:"positionname"},
			         { title: "Department", data:"departmentname"},
			         { title: "Number", data:"number"},
			         { title: "Location", data:"location_req"},
			         { title: "Onboard", data:"date_req"},
			         { title: "Duration", data:"duration_req"},
			         { title: "Skills", data:"skills"},
			         { title: "Operation", data:"operation"},
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
//			         rowReorder: {
//			        	 selector: 'td:nth-child(2)'
//			         },
			         responsive: true
		}); 

		$('#example tbody').off( 'click', 'button');
		$('#example tbody').on( 'click', 'button', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//			alert( JSON.stringify(data));
			addPool(data);
		});
	}

	ajax(url,type,data,cb);
}

var pools=[];
function getPools(){
	initAgencies();
	
	var url="/hr/getHRPoolList";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		pools=msg;
		for(var k=0;k<msg.length;k++){
			msg[k].operation='<button class="btn btn-success btn-xs edit">Poster</button> <button class="btn btn-primary btn-xs edit" data-toggle="modal" data-target="#myModal">Edit</button> <button class="btn btn-danger btn-xs delete">Delete</button>';
			msg[k].skills="";
			msg[k].skills+=msg[k].skill_req1?(", "+msg[k].skill_req1):"";
			msg[k].skills+=msg[k].skill_req2?(", "+msg[k].skill_req2):"";
			msg[k].skills+=msg[k].skill_req3?(", "+msg[k].skill_req3):"";
			msg[k].skills+=msg[k].skill_req4?(", "+msg[k].skill_req4):"";
			msg[k].skills+=msg[k].skill_req5?(", "+msg[k].skill_req5):"";
			if(msg[k].skills.length>=2) msg[k].skills=msg[k].skills.substring(2,msg[k].skills.length);
			msg[k].recruitnumber='<small class="label bg-blue" margin-top="-2px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+msg[k].realnumber+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small>';
		}

		var table = $('#example2').DataTable({
			data: msg,
			columns:[
			         { title: "Position ID", data:"positionid"},
			         { title: "Position", data:"positionname"},
			         { title: "Department", data:"departmentname"},
			         { title: "Recruit Number", data:"recruitnumber"},
			         { title: "Apply Start", data:"apply_start"},
			         { title: "Apply Due", data:"apply_due"},
			         { title: "Onboard", data:"date_req"},
			         { title: "Operation", data:"operation"},
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
//			         rowReorder: {
//			        	 selector: 'td:nth-child(2)'
//			         },
			         responsive: true
		}); 


		$('#example2 tbody').off( 'click', 'button');
		$('#example2 tbody').on( 'click', 'button', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//			alert( JSON.stringify(data));

			if($(this).html()=="Poster"){
				poster(data);
			}
			if($(this).html()=="Edit"){
				$("#a_id").val(data.poolid);
				$("#inputNumber").val(data.realnumber);
				$("#inputDate1").val(data.apply_start);
				$("#inputDate2").val(data.apply_due);
			}
			else if($(this).html()=="Delete"){
				delPool(data);
			}
		});
		
		$('#example2 tbody').off( 'click', 'tr td:not(.sorting_1)');
		$('#example2 tbody').on( 'click', 'tr td:not(.sorting_1)', function () {
			/*.active     
			.success 
			.warning 
			.danger*/
	        if ( $(this).parents('tr').hasClass('warning') ) {
	            $(this).parents('tr').removeClass('warning');
	        }
	        else {
	            table.$('tr.warning').removeClass('warning');
	            $(this).parents('tr').addClass('warning');
	        }
	        
	        var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
			
			clearPublished();
			getPublished(data);
	    } );

	}

	ajax(url,type,data,cb);
}

function addPool(position){
	/*	alert(JSON.stringify(position));
	alert(JSON.stringify(pools));*/

	for(var k=0;k<pools.length;k++){
		if(position.positionid==pools[k].positionid){
			alert("Position already in the pool!");
			return;
		}
	}

	var url="/hr/addPool";
	var type="get";
	var data={positionid:position.positionid,number:position.number};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		alert("Add Into Pool Successfully!");
		getPools();
	}
	ajax(url,type,data,cb);
}

function delPool(pool){
	var url="/hr/deletePool";
	var type="get";
	var data={poolid:pool.poolid};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!");
			return;
		}
		alert("Delete Pool Successfully!");
		getPools();
	}
	ajax(url,type,data,cb);
}

function poster(pool){
//	http://dummyimage.com/600x400/000/fff&text=
//	https://placeholdit.imgix.net/
//	alert(JSON.stringify(pool));
	var text="Recruitment Poster%0A%0A%0A%0A";
	text+="Position:"+pool.positionname+"%0A";
	text+="Department:"+pool.departmentname+"%0A";
	text+="Recruit Number:"+pool.realnumber+"%0A";
	text+="Apply Start:"+pool.date_req+"%0A";
	text+="Apply Due:"+pool.date_req+"%0A";
	text+="Onboard:"+pool.date_req+"%0A";
	text+="Duration:"+pool.duration_req+"%0A";
	text+="Location:"+pool.location_req+"%0A";
	text+="Skills:"+pool.skills+"%0A%0A%0A%0A";
	window.open('https://placeholdit.imgix.net/~text?txtsize=40&bg=234145&txtclr=a52323&txt='+text+'&w=800&h=900&txttrack=0', '_blank');
}

function updatePool(){
	var poolid=$("#a_id").val();
	var number=$("#inputNumber").val();
	var apply_start=$("#inputDate1").val();
	var apply_due=$("#inputDate2").val();

	if(!poolid) {alert("Please reselect a pool to Edit!"); return;}
	if(!number) {alert("Please select a recruit plan number!"); return;}
	if(!integerFormatCheck(number)) {alert("Number wrong format!"); return;}
	if(!apply_start) {alert("Please select a start date!");return}
	if(!dateFormatCheck(apply_start)) {alert("Wrong format of start date!");return}
	if(!apply_due) {alert("Please select a due date!");return}
	if(!dateFormatCheck(apply_due)) {alert("Wrong format of due date!");return}

	var url="/hr/updatePool";
	var type="get";
	var data={poolid:poolid,number:number,apply_start:apply_start,apply_due:apply_due};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!");
			return;
		}
		$("#myModal").modal('hide'); 
		alert("Update Pool Successfully!");
		getPools();
	}

	ajax(url,type,data,cb);
}

function getPublished(pool){
	var url="/getPublishedList";
	var type="get";
	var data={poolid:pool.poolid};
	var cb=function(msg){
//		$('input[type="checkbox"]').parent().next()
		$("#p_id").val(pool.poolid);
		for(var k=0;k<msg.length;k++){
//			alert(msg[k].agencyid);
			$('#cb_'+msg[k].agencyid).iCheck('check')
		}
	}
	
	ajax(url,type,data,cb);
}

function clearPublished(){
	$("#p_id").val("");
	$('input[type="checkbox"]').iCheck('uncheck')
}

function addPublished(pid,aid){
	var url="/hr/addPublished";
	var type="get";
	var data={poolid:pid,agencyid:aid};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error");
			return;
		}
		alert("Published Successfully");
	}
	
	ajax(url,type,data,cb);
}

function delPublished(pid,aid){
	var url="/hr/delPublished";
	var type="get";
	var data={poolid:pid,agencyid:aid};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error");
			return;
		}
		alert("Delete Published Successfully");
	}
	
	ajax(url,type,data,cb);
}
