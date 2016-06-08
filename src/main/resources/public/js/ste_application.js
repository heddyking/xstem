$(function(){
	getApplication();
})

var objs=[];
var acceptedOrRejected=false;
function getApplication(){
	var url="/ste/getApplymentHistory";
	var type="get";
	var data={};
	var cb=function(msg){
		objs=[];
		acceptedOrRejected=false;
		
		var tmp={};
		for(var k=0;k<msg.length;k++){
			msg[k].updatedat=getSmpFormatDateByLong(msg[k].updatedat,true).substring(0,19);
			msg[k].inv_starttime=getSmpFormatDateByLong(msg[k].inv_starttime,true).substring(0,16);
			msg[k].inv_endtime=getSmpFormatDateByLong(msg[k].inv_endtime,true).substring(0,16);
			msg[k].date=getSmpFormatDateByLong(msg[k].updatedat,false);
			msg[k].time=getSmpFormatDateByLong(msg[k].updatedat,true).substring(11,19);
			if(!tmp[msg[k].date]){
				tmp[msg[k].date]=[msg[k]];
			}
			else{
				tmp[msg[k].date].push(msg[k]);
			}
			
			msg[k].skills_req="";
			msg[k].skills_req+=msg[k].skill_req1?(", "+msg[k].skill_req1):"";
			msg[k].skills_req+=msg[k].skill_req2?(", "+msg[k].skill_req2):"";
			msg[k].skills_req+=msg[k].skill_req3?(", "+msg[k].skill_req3):"";
			msg[k].skills_req+=msg[k].skill_req4?(", "+msg[k].skill_req4):"";
			msg[k].skills_req+=msg[k].skill_req5?(", "+msg[k].skill_req5):"";
			if(msg[k].skills_req.length>=2) msg[k].skills_req=msg[k].skills_req.substring(2,msg[k].skills_req.length);
			
			$("#aid").val(msg[k].applymentid);
			if(msg[k].state==10 || msg[k].state==12) acceptedOrRejected=true;
		}
		
		for(var key in tmp){
			tmp[key].sort(function(a,b){
				if(a.time<b.time) return -1;
				else if(a.time>b.time) return 1;
				else return 0;
			});
			objs.push({'date':key,'items':tmp[key]});
		}
		objs.sort(function(a,b){
			if(a.date<b.date) return -1;
			else if(a.date>b.date) return 1;
			else return 0;
		})
		
//		alert(JSON.stringify(objs));
		
		var html=generateTimelines(objs);
		$("#mytimeline").html(html);
	}
	
	ajax(url,type,data,cb);
}

function generateTimelines(objs){
	if(!objs || objs.length==0){
		return "";
	}
	var html="";
	
	for(var k=0;k<objs.length;k++){
		html+=timeline_label.replace("@COLOR",timeline_seeds[k%3])
						    .replace("@DATE",objs[k].date)
		for(var n=0;n<objs[k].items.length;n++){
			var obj=objs[k].items[n];
			if(obj.state==12) continue;
			var item=timeline_item.replace("@FLAG",timeline_flags[obj.state])
								  .replace("@COLOR",timeline_colors[obj.state])
								  .replace("@TITLE",timeline_titles[obj.state])
								  .replace("@TIME",obj.time)
								  .replace("@STATE",obj.state);
			
			var content="";
			//@content
			switch(obj.state){
				case 1:
					item=item.replace("@SHOWA","none").replace("@SHOWR","none");
					
					content="Position:  "+obj.positionname+"<br/>"+
						"Department:  "+obj.departmentname+"<br/>"+
			            "Location:  "+obj.location_req+"<br/>"+
			            "Entry Date:  "+obj.date_req+"<br/>"+
			            "Duration:  "+obj.duration_req;
					
					details[1]=modal_item.replace("@KEY",'Applied At').replace("@VALUE",obj.updatedat)
					        +modal_item.replace("@KEY",'Position No.').replace("@VALUE",obj.positionid)
							+modal_item.replace("@KEY",'Position').replace("@VALUE",obj.positionname)
							+modal_item.replace("@KEY",'Department').replace("@VALUE",obj.departmentname)
							+modal_item.replace("@KEY",'Onboard').replace("@VALUE",obj.date_req)
							+modal_item.replace("@KEY",'Duration').replace("@VALUE",obj.duration_req)
							+modal_item.replace("@KEY",'Location').replace("@VALUE",obj.location_req)
							+modal_item.replace("@KEY",'Number').replace("@VALUE",obj.number)
							+modal_item.replace("@KEY",'Skills').replace("@VALUE",obj.skills_req)
							+modal_text.replace("@KEY",'Description').replace("@VALUE",obj.description);
						
					break;
				case 2:
					item=item.replace("@SHOWD","none").replace("@SHOWA","none").replace("@SHOWR","none");
					
					content="Reviewed Success, Please wait for the Second Review.";
					
					details[2]=modal_item.replace("@KEY",'Updated At').replace("@VALUE",obj.updatedat)
						+modal_item.replace("@KEY",'Reviewed By').replace("@VALUE",obj.fte_name);
						
					break;
				case 3:
					item=item.replace("@SHOWD","none").replace("@SHOWA","none").replace("@SHOWR","none");
					
					content="Reviewed Success, Please wait for the interview information.";
						
					details[3]=modal_item.replace("@KEY",'Updated At').replace("@VALUE",obj.updatedat)
						+modal_item.replace("@KEY",'Reviewed By').replace("@VALUE",obj.fte_name);
						
					break;
				case 4:
					item=item.replace("@SHOWD","none").replace("@SHOWA","none").replace("@SHOWR","none");
					
					content="Time:  "+obj.inv_starttime+" ~ "+obj.inv_endtime+"<br/>"+
					   "Location:  "+obj.inv_location+"<br/>"+
					   "Contact Person:  "+obj.inv_contact_person+"<br/>"+
					   "Contact Phone:  "+obj.inv_contact_phone+"<br/>"+
					   "Tips:  "+obj.inv_replenish;
					
					details[4]=modal_item.replace("@KEY",'Interview Time').replace("@VALUE",obj.inv_starttime+" ~ "+obj.inv_endtime)
						+modal_item.replace("@KEY",'Location').replace("@VALUE",obj.inv_location)
						+modal_item.replace("@KEY",'Contact Person').replace("@VALUE",obj.inv_contact_person)
						+modal_item.replace("@KEY",'Contact Phone').replace("@VALUE",obj.inv_contact_phone)
						+modal_text.replace("@KEY",'Tips').replace("@VALUE",obj.inv_replenish)
						+modal_item.replace("@KEY",'HR').replace("@VALUE",obj.fte_name)
						+modal_item.replace("@KEY",'HR Phone').replace("@VALUE",obj.fte_phone)
						+modal_item.replace("@KEY",'HR Email').replace("@VALUE",obj.fte_email);
						
					break;
				case 5:
					item=item.replace("@SHOWD","none");
					content="Congratulations! Your pass the interview! "
						
					if(!obj.offer_url){
						item=item.replace("@SHOWA","none").replace("@SHOWR","none");
						content+="Please wait the offer!";
					}
					else{
						if(acceptedOrRejected){
							item=item.replace("@SHOWA","none").replace("@SHOWR","none");
						}
						content+='<a target="_blank" href="'+obj.offer_url+'"><i class="fa fa-fw fa-download"></i>offer</a>'
					}
						
					details[5]=modal_item.replace("@KEY",'Updated At').replace("@VALUE",obj.updatedat)
						+modal_item.replace("@KEY",'HR').replace("@VALUE",obj.fte_name)
						+modal_item.replace("@KEY",'HR Phone').replace("@VALUE",obj.fte_phone)
						+modal_item.replace("@KEY",'HR Email').replace("@VALUE",obj.fte_email)
						+modal_download.replace("@KEY",'Offer')
							.replace("@VALUE",obj.offer_url?"Download Offer":"Please Wait")
							.replace("@URL",obj.offer_url);
						
					break;
				case 6:
					item=item.replace("@SHOWA","none").replace("@SHOWR","none");
					
					content="Sorry! Your applyment was terminated!"
						
						details[6]=modal_item.replace("@KEY",'Updated At').replace("@VALUE",obj.updatedat)
							+modal_item.replace("@KEY",'Result').replace("@VALUE",'We would not consider your applyment, due to inadequacy!');
						
					break;
				case 10:
					item=item.replace("@SHOWD","none").replace("@SHOWA","none").replace("@SHOWR","none");
					
					content="You have accepted the offer.<br/>"+
							"Onboard Time:  "+obj.date_req+" 9:00 am<br/>"+
							"Location:  "+obj.location_req
							"Contact:  "+obj.inv_contact_phone;
					
					details[10]=modal_item.replace("@KEY",'Updated At').replace("@VALUE",obj.updatedat)
						+modal_item.replace("@KEY",'Status').replace("@VALUE",'You have accepted the offer')
						+modal_download.replace("@KEY",'Offer')
							.replace("@VALUE",obj.offer_url?"Download Offer":"Please Wait")
							.replace("@URL",obj.offer_url)
						+modal_download.replace("@KEY",'Contract')
							.replace("@VALUE",obj.contract_url?"Download Contract":"Please Wait")
							.replace("@URL",obj.contract_url);
					
					break;
				case 11:
					item=item.replace("@SHOWA","none").replace("@SHOWR","none");
					
					content="You have rejected the offer. If you want to raise a new applyment, kindly delete the current one!";
					
					details[11]=modal_item.replace("@KEY",'Updated At').replace("@VALUE",obj.updatedat)
						+modal_item.replace("@KEY",'Status').replace("@VALUE",'You have rejected the offer')
						+modal_download.replace("@KEY",'Offer')
							.replace("@VALUE",obj.offer_url?"Download Offer":"Please Wait")
							.replace("@URL",obj.offer_url);
					
					break;
			}
			
			item=item.replace("@CONTENT",content);
			
			html+=item;
		}
	}
	
	var last_state=objs[objs.length-1].items[objs[objs.length-1].items.length-1].state
	//add timeline end
	if(last_state==6 || last_state==10 || last_state==11 || last_state==12) html+=timeline_end;
	
	return html;
}

var details={};
function detail(state){
	
	$("#modalContent").html("");
	$("#modalContent").html(details[state]);
}

function delte(){
	var aid=$("#aid").val();
//	alert(aid);
	var url="/ste/cancel";
	var type="get";
	var data={applymentid:aid};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		
		alert("Delete the application successfully!");
		getApplication();
	}
	
	ajax(url,type,data,cb);
}

function accept(){
	var aid=$("#aid").val();
//	alert(aid);
	var url="/ste/accept";
	var type="get";
	var data={applymentid:aid};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		
		alert("Accept the offer successfully!");
		getApplication();
	}
	
	ajax(url,type,data,cb);
}

function reject(){
	var aid=$("#aid").val();
//	alert(aid);
	var url="/ste/reject";
	var type="get";
	var data={applymentid:aid};
	var cb=function(msg){
		if(msg<=0){
			alert("System Error!");
			return;
		}
		
		alert("Reject the offer successfully!");
		getApplication();
	}
	
	ajax(url,type,data,cb);
}