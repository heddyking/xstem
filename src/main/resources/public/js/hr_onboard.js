$(function(){
	getOnboards();

	$("#upload-offer-input").on("change", uploadOffer);
	$("#upload-contract-input").on("change", uploadContract);
})

function getOnboards(){
	var url="/hr/getOfferStageList";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(JSON.stringify(msg));
		for(var k=0;k<msg.length;k++){
			msg[k].genderStr=msg[k].gender?"Male":"Female";

			if(!msg[k].offer_url) msg[k].offer='-';
			else msg[k].offer='<a target="_blank" href="'+msg[k].offer_url+'"><i class="fa fa-fw fa-download"></i>offer</a>';
			
			if(!msg[k].contract_url) msg[k].contract='-';
			else msg[k].contract='<a target="_blank" href="'+msg[k].contract_url+'"><i class="fa fa-fw fa-download"></i>contract</a>';

			if(msg[k].state==5) msg[k].status='<small class="label bg-primary" margin-top="-2px">Waiting</small>';
			else if(msg[k].state==10) msg[k].status='<small class="label bg-green" margin-top="-2px">Accepted</small>';
			else if(msg[k].state==11) msg[k].status='<small class="label bg-red" margin-top="-2px">Refused</small>';
			else if(msg[k].state==12) msg[k].status='<small class="label bg-teal" margin-top="-2px">Onboaded</small>';
			
			if(msg[k].state==5) msg[k].operation='<button class="btn btn-primary btn-xs edit" data-toggle="modal" data-target="#myModal1" >Upload Offer</button>';
			else if(msg[k].state==10) msg[k].operation='<button class="btn btn-success btn-xs edit" data-toggle="modal" data-target="#myModal2" >Upload Contract</button>';
			else if(msg[k].state==11) msg[k].operation='<button class="btn btn-danger btn-xs edit" >Terminated</button>';
			else if(msg[k].state==12) msg[k].operation='<button class="btn btn-success btn-xs edit" data-toggle="modal" data-target="#myModal2" >Upload Contract</button>';
			
		}

		var table = $('#example').DataTable({
			data: msg,
			columns:[
			         { title: "ID", data:"steid"},
			         { title: "Candidate", data:"name"},
//			         { title: "Gender", data:"genderStr"},
			         { title: "Email", data:"email"},
			         { title: "Telephone", data:"telephone"},
			         { title: "Position", data:"positionname"},
			         { title: "Department", data:"departmentname"},
			         { title: "Onboard Date", data:"date_req"},
//			         { title: "Duration", data:"duration_req"},
			         { title: "Location", data:"location_req"},
			         { title: "Offer", data:"offer"},
			         { title: "Contract", data:"contract"},
			         { title: "Status", data:"status"},
			         { title: "Operation", data:"operation"}
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
			         responsive: true
		}); 

		$('#example tbody').off( 'click', 'button');
		$('#example tbody').on( 'click', 'button', function () {
			var data = table.row( $(this).parents('tr')).data();
			if(!data) data = table.row( $(this).parents('tr').prev() ).data();
//			alert( JSON.stringify(data));
//			alert($(this).html())
			if($(this).html()=="Upload Offer"){
				$("#a_id1").val(data.steid);
			}
			
			if($(this).html()=="Upload Contract"){
				$("#a_id2").val(data.steid);
			}
			
			if($(this).html()=="Terminated"){
				terminate(data.applymentid);
			}
			
		});
	}

	ajax(url,type,data,cb);
}


function uploadOffer(){
	$("#url1").val("");
	$("#offer_lb").val("");
	
	$.ajax({
	      url: "/uploadFile",
	      type: "POST",
	      data: new FormData($("#upload-offer-form")[0]),
	      enctype: 'multipart/form-data',
	      processData: false,
	      contentType: false,
	      cache: false,
	      success: function (msg) {
	        // Handle upload success
	    	$("#url1").val(msg);
			$("#offer_lb").html("The offer was uploaded!");
	      },
	      error: function () {
	        // Handle upload error
	    	  $("#offer_lb").html("File not uploaded (perhaps too big)");
	      }
	 });
}

function uploadContract(){
	$("#url2").val("");
	$("#contract_lb").val("");
	
	$.ajax({
	      url: "/uploadFile",
	      type: "POST",
	      data: new FormData($("#upload-offer-form")[0]),
	      enctype: 'multipart/form-data',
	      processData: false,
	      contentType: false,
	      cache: false,
	      success: function (msg) {
	        // Handle upload success
	    	$("#url2").val(msg);
			$("#contract_lb").html("The contract was uploaded!");
	      },
	      error: function () {
	        // Handle upload error
	    	$("#contract_lb").html("File not uploaded (perhaps too big)");
	      }
	 });
}

function saveOffer(){
	var steid=$("#a_id1").val();
	var offer_url=$("#url1").val();
	
	if(!steid){alert("Please re-select the Candidate Record!"); return;}
	if(!offer_url){alert("Please re-upload the offer");return;}
	
//	alert(steid+" "+offer_url);
	
	var url="/hr/updateOfferInfo";
	var type="get";
	var data={steid:steid,offer_url:offer_url};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error");
			return;
		}
		$("#myModal1").modal('hide'); 
		alert("Save Offer Successfully!");
		getOnboards();
	}
	ajax(url,type,data,cb);
}

function saveContract(){
	var steid=$("#a_id2").val();
	var contract_url=$("#url2").val();
	
	if(!steid){alert("Please re-select the Candidate Record!"); return;}
	if(!contract_url){alert("Please re-upload the contract");return;}
	
//	alert(steid+" "+offer_url);
	
	var url="/hr/updateContractInfo";
	var type="get";
	var data={steid:steid,contract_url:contract_url};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error");
			return;
		}
		$("#myModal2").modal('hide'); 
		alert("Save Contract Successfully!");
		getOnboards();
	}
	ajax(url,type,data,cb);
}

function terminate(applymentid){
	var url="/hr/terminate";
	var type="get";
	var data={applymentid:applymentid};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error");
			return;
		}
		alert("Terminate the applyment Successfully!");
		getOnboards();
	}
	ajax(url,type,data,cb);
}







