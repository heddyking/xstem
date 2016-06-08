
var timeline_label=
'<li class="time-label">'+
'<span class="@COLOR">'+
'@DATE'+
'</span>'+
'</li>';


var timeline_item=
'<li>'+
'<i class="fa @FLAG @COLOR"></i>'+
'<div class="timeline-item">'+
'<span class="time"><i class="fa fa-clock-o"></i>@TIME</span>'+
'<h3 class="timeline-header"><a href="#">@TITLE</a></h3>'+
'<div class="timeline-body">'+
'@CONTENT'+
'</div>'+
'<div class="timeline-footer">'+
'<button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal" onclick="detail(@STATE)">Read more</button>'+
'<button class="btn btn-danger btn-xs" style="margin-left:3px;display:@SHOWD" onclick="delte()">Delete</button>'+
'<button class="btn btn-success btn-xs" style="margin-left:3px;display:@SHOWA" onclick="accept()">Accept</button>'+
'<button class="btn btn-danger btn-xs" style="margin-left:3px;display:@SHOWR" onclick="reject()">Reject</button>'+
'</div>'+
'</div>'+
'</li>';

var timeline_end=
'<li>'+
'<i class="fa fa-clock-o bg-gray"></i>'+
'</li>';

var modal_item=
'<div class="form-group">'+
'<label  class="col-sm-3 control-label">@KEY</label>'+
'<div class="col-sm-8"><input type="text" class="form-control" value="@VALUE" readonly></div>'+
'</div>';

var modal_text=
	'<div class="form-group">'+
	'<label  class="col-sm-3 control-label">@KEY</label>'+
	'<div class="col-sm-8"><textarea class="form-control" readonly>@VALUE</textarea></div>'+
	'</div>';

var modal_download=
'<div class="form-group">'+
'<label class="col-sm-3 control-label">@KEY</label>'+
'<div class="col-sm-8"><a target="_blank" href="@URL"><button style="float:left;width:140px;margin-top:3px" >@VALUE</button></a></div> '+ 
'</div>';

//--0-self cancelled
//--1- wait hr check
//--2- wait mg check
//--3- wait arrange interview
//--4- interview
//--5- pass
//--6- fail
//--10-accepted
//--11-unaccepted
//--12-signed contract

var timeline_seeds=['bg-green','bg-red','bg-blue'];

var timeline_flags={
		'1': 'fa-plus-circle',
		'2': 'fa-flag',
		'3': 'fa-flag',
		'4': 'fa-eye',
		'5': 'fa-send',
		'6': 'fa-ban',
		'10': 'fa-smile-o',
		'11': 'fa-frown-o'
}

var timeline_colors={
			'1': 'bg-blue',
			'2': 'bg-aqua',
			'3': 'bg-yellow',
			'4': 'bg-purple',
			'5': 'bg-green',
			'6': 'bg-navy',
			'10': 'bg-maroon',
			'11': 'bg-orange'
			}

var timeline_titles={
            '1': 'My Application',
            '2': 'First Review',
            '3': 'Second Review',
            '4': 'Interview Information',
            '5': 'Offer Stage',
            '6': 'Terminated',
            '10': 'Accepted Offer',
            '11': 'Rejected Offer'
		   }

