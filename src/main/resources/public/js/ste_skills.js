$(function(){
	initSkills();
	getSkills();
})

function initSkills(){
	var url="/getSkills";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(msg.length);
//		$(".select2").select2();
		$("select[id^='inputSkill']").html("<option></option>")
		for(var k=0;k<msg.length;k++){
			$("select[id^='inputSkill']").append("<option>"+msg[k]+"</option>");
		}
	}
	
	ajax(url,type,data,cb);
}

function getSkills(){
	var url="/ste/getSkillListBySteid";
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
			    { title: "Skill", data:"skill"},
			    { title: "Skill Description", data:"description"},
			    { title: "Score", data:"score"},
			    { title: "Updated At", data:"updatedat"},
			    { title: "Status", data:"status"},
			    { title: "Operations", data:"operations"}
			],
			"order": [[ 3, "desc" ]],
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
			if($(this).html()=="Edit"){
				$("#a_id").val(data.skillid);
				
				$("#inputSkill2").val(data.skill).select2();
				
//				$("#inputSkill2 option").each(function(){
//					if($(this).attr('selected')){
//						$(this).attr('selected', false);
//						$("#inputSkill2").select2();
//					}
//				});
//				$("#inputSkill2 option:contains('"+data.skill+"')").each(function(){
//					 if ($(this).text() == data.skill) {
//						     $(this).attr('selected', true);
//						     $("#inputSkill2").select2();
//						     return;
//					 }
//				});

				$("#inputDescription2").val(data.description);
			}
			else if($(this).html()=="Delete"){
				delSkill(data.skillid);
			}
		});
	}

	ajax(url,type,data,cb);
}

function addSkill(){
	var skill=$("#inputSkill").val();
	var description=$("#inputDescription").val();
	
	if(!skill){alert("Please select Skill!"); return;}
	if(skill.length>32){alert("Skill is too long");return;}
	if(!description) {alert("Please input some description");return;}
	if(description.length>64){alert("Description is too long");return;}
	
	var url="/ste/addSkill";
	var type="get";
	var data={skill:skill,description:description};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		else{
			alert("Added Successfully!");
			getSkills();
		}
	}

	ajax(url,type,data,cb);
}

function delSkill(id){
	var url="/ste/deleteSkill";
	var type="get";
	var data={skillid:id};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!")
			return;
		}
		alert("Deleted Successfully!");
		getSkills();
	}
	
	ajax(url,type,data,cb);
}

function updateSkill(){
	var id=$("#a_id").val();
	var skill=$("#inputSkill2").val();
	var description=$("#inputDescription2").val();
	
	if(!skill){alert("Please select Skill!"); return;}
	if(skill.length>32){alert("Skill is too long");return;}
	if(!description) {alert("Please input some description");return;}
	if(description.length>64){alert("Description is too long");return;}
	
	var url="/ste/updateSkill";
	var type="get";
	var data={skillid:id,skill:skill,description:description};
	var cb=function(msg){
		if(msg!=1){
			$("#myModal").modal('hide'); 
			alert("System Error!");
			return;
		}
		$("#myModal").modal('hide'); 
		alert("Update Successfully!");
		getSkills();
	}
	
	ajax(url,type,data,cb);
}
