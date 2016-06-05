$(function(){
	getSkills();
})

function getSkills(){
	var url="/mg/getSkillListByDepartment";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		for(var k=0;k<msg.length;k++){
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true);
			msg[k].operations='<button class="btn btn-success btn-xs edit">Approve</button> <button class="btn btn-danger btn-xs delete">Deny</button>';
			msg[k].scoreSel=scoreSel(msg[k].score);
		}
		
		var table = $('#example2').DataTable({
			"data": msg,
			"columns":[
				{ title: "STE ID", data:"steid"},
				{ title: "STE Name", data:"name"},
				{ title: "Skill", data:"skill"},
			    { title: "Skill Description", data:"description"},
			    { title: "Score", data:"scoreSel"},
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
				approveSkill(data.skillid,data.score);
			}
			else if($(this).html()=="Deny"){
				denySkill(data.skillid);
			}
		});
		
		$('#example2 tbody').off( 'change');
		$('#example2 tbody').on( 'change', 'select', function () {
	        var data = table.row( $(this).parents('tr')).data();
	        if(!data) data = table.row( $(this).parents('tr').prev() ).data();
	        data.score=$(this).find('option:selected').text();
	        alert(data.score);
	    });
		    
	}

	ajax(url,type,data,cb);
}


function approveSkill(id,score){
	if(!score) {
		alert("Please select a score!");
		return;
	}
	var url="/mg/approveSkill";
	var type="get";
	var data={skillid:id,score:score};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!");
			return;
		}
		alert("Approved One Records!");
		getSkills();
	}
	
	ajax(url,type,data,cb);
}

function denySkill(id){
	var url="/mg/rejectSkill";
	var type="get";
	var data={skillid:id};
	var cb=function(msg){
		if(msg!=1){
			alert("System Error!");
			return;
		}
		alert("Rejected One Records!");
		getSkills();
	}
	
	ajax(url,type,data,cb);
}


function scoreSel(i){
	var str="<select><option></option>";
	for(var k=10;k>=0;k--){
		if(k==i) str+="<option selected='true'>"+k+"</option>";
		else str+="<option>"+k+"</option>";
	}
	str+="</select>";
	return str;
}



