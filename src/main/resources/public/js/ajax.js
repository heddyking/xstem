
function ajax(url,type,data,cb,eb){
	$.ajax({ 'async': true,
		'url': url,
		'type': type?type:'get',
		'data': data?data:{},
		'datatype': 'html',
		'timeout': 30000,
		'error': function (msg) {
			//alert(JSON.stringify(msg)); 
			if(eb){
				eb(msg);
			}
			else{
				alert('System Error! Please Retry.');
			}
			return;
		},
		'success': function (msg) {
			//alert(JSON.stringify(msg)); 
			if(cb){
				cb(msg);
			}
			else{
				console.log(msg);
			}
			return;
		}
	});
}

