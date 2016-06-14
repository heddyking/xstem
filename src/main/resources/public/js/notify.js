
var notify=new (function(){
	
	this.inquirySTEApplication=function(){
		var url="/ste/inquirySelfApplication";
		var type="get";
		var data={};
		var cb=function(msg){
		}
		var eb=function(msg){
		}
		ajax(url,type,data,cb,eb);
	}
	
	this.inquirySTESalary=function(){
		var url="/ste/inquirySelfSalary";
		var type="get";
		var data={};
		var cb=function(msg){
		}
		var eb=function(msg){
		}
		ajax(url,type,data,cb,eb);
	}
	
	this.inquiryHRSalary=function(){
		var url="/hr/inquiryHRSalary";
		var type="get";
		var data={};
		var cb=function(msg){
		}
		var eb=function(msg){
		}
		ajax(url,type,data,cb,eb);
	}

	this.getNotifySTE=function(justNum){
		var url="/ste/pendingSTE";
		var type="get";
		var data={};
		var cb=function(msg){
//			alert(JSON.stringify(msg));
			if(!msg){
				return;
			}

			var r=msg["r"];
			var r1=msg["r1"];
			var r2=msg["r2"];
			var r3=msg["r3"];

			var content="";
			if(r1!=0){
				content+=
					'<div class="callout callout-info">'+
					'<h4>Personnel Information</h4>'+
					'<p><small class="label bg-yellow" margin-top="-2px"> '+r1+' </small> <a style="margin-left:5px" href="/pages_ste/info.html">Your personnel information waiting to be completed.</a></p>'+
					'</div>';
			}
			if(r2!=0){
				content+=
					'<div class="callout callout-danger">'+
					'<h4>Job Application</h4>'+
					'<p><small class="label bg-yellow" margin-top="-2px"> '+r2+' </small><a style="margin-left:5px" href="/pages_ste/application.html">Your application have been updated.</a></p>'+
					'</div>';
			}
			if(r3!=0){
				content+=
					'<div class="callout callout-success">'+
					'<h4>Payroll Management</h4>'+
					'<p><small class="label bg-yellow" margin-top="-2px"> '+r3+'</small><a style="margin-left:5px" href="/pages_ste/payment.html">Your have new payroll information.</a></p>'+
					'</div>';
			}

			if(!justNum) $("#main_body").html(content);
			if(r!=0)$("#notify_num").html(r);
			else $("#notify_num").html("");
			$("#notify_header").html('You have '+r+' notifications');
			$("#notify_summary").html('<i class="fa fa-star text-aqua"></i> '+r+' events waiting to be handled');

		}

		var eb=function(msg){
			return;
		}

		ajax(url,type,data,cb,eb);
	}

	this.getNotifyHR=function(justNum){
		var url="/hr/pendingHR";
		var type="get";
		var data={};
		var cb=function(msg){
//			alert(JSON.stringify(msg));
			if(!msg){

				return;
			}

			var r=msg["r"];
			var r1=msg["r1"];
			var r2=msg["r2"];
			var r3=msg["r3"];
			var r4=msg["r4"];
			var r5=msg["r5"];

			var content="";
			if(r1+r2+r3+r4!=0){
				content+='<div class="callout callout-info">'+
						 '<h4>Recruit Management</h4>';
				if(r1!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r1+' </small> <a style="margin-left:5px" href="/pages_hr/publish.html">There are positions waiting to be published.</a></p>'
				}
				if(r2!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r2+' </small><a style="margin-left:5px" href="/pages_hr/filter.html">There are applications waiting to be filtered.</a></p>'
				}
				if(r3!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r3+'</small><a style="margin-left:5px" href="/pages_hr/arrange.html">There are candidate interviews waiting to be arranged.</a></p>'
				}
				if(r4!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r4+'</small><a style="margin-left:5px" href="/pages_hr/onboard.html">There are candidate offer stages waiting to be processed.</a></p>'
				}
				content+='</div>';
			}
			
			if(r5!=0){
				content+=
					'<div class="callout callout-success">'+
					'<h4>Payroll Management</h4>'+
					'<p><small class="label bg-yellow" margin-top="-2px"> '+r5+'</small><a style="margin-left:5px" href="/pages_hr/payment.html">New month-payroll information are available.</a></p>'+
					'</div>';
			}

			if(!justNum) $("#main_body").html(content);
			if(r!=0)$("#notify_num").html(r);
			else $("#notify_num").html("");
			$("#notify_header").html('You have '+r+' notifications');
			$("#notify_summary").html('<i class="fa fa-star text-aqua"></i> '+r+' events waiting to be handled');

		}

		var eb=function(msg){
			return;
		}

		ajax(url,type,data,cb,eb);
	}

	this.getNotifyMG=function(justNum){
		var url="/mg/pendingMG";
		var type="get";
		var data={};
		var cb=function(msg){
//			alert(JSON.stringify(msg));
			if(!msg){

				return;
			}

			var r=msg["r"];
			var r1=msg["r1"];
			var r2=msg["r2"];
			var r3=msg["r3"];
			var r4=msg["r4"];
			var r5=msg["r5"];

			var content="";
			if(r1+r2!=0){
				content+='<div class="callout callout-info">'+
						 '<h4>Recruit Management</h4>';
				if(r1!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r1+' </small> <a style="margin-left:5px" href="/pages_mg/filter.html">There are applications waiting to be filtered.</a></p>'
				}
				if(r2!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r2+' </small><a style="margin-left:5px" href="/pages_mg/interview.html">There are applications into the interview stage.</a></p>'
				}
				content+='</div>';
			}
			
			if(r3+r4+r5!=0){
				content+='<div class="callout callout-success">'+
						 '<h4>Career Management</h4>';
				if(r3!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r3+' </small> <a style="margin-left:5px" href="/pages_mg/attendance.html">There are attendance records waiting to be verify.</a></p>'
				}
				if(r4!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r4+' </small><a style="margin-left:5px" href="/pages_mg/performance.html">There are performance records waiting to be verify.</a></p>'
				}
				if(r5!=0){
					content+=
						'<p><small class="label bg-yellow" margin-top="-2px"> '+r5+' </small><a style="margin-left:5px" href="/pages_mg/skills.html">There are skill records waiting to be verify.</a></p>'
				}
				content+='</div>';
			}
			
			if(!justNum) $("#main_body").html(content);
			if(r!=0)$("#notify_num").html(r);
			else $("#notify_num").html("");
			$("#notify_header").html('You have '+r+' notifications');
			$("#notify_summary").html('<i class="fa fa-star text-aqua"></i> '+r+' events waiting to be handled');

		}

		var eb=function(msg){
			return;
		}

		ajax(url,type,data,cb,eb);
	}
})();
