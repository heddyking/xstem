function emailFormatCheck(email){
	if ((email.length > 128) || (email.length < 6)) {
		return false;
	}
	var format = /^[A-Za-z0-9+]+[A-Za-z0-9\.\_\-+]*@([A-Za-z0-9\-]+\.)+[A-Za-z0-9]+$/;
	if (!email.match(format)) {
		return false;
	}
	return true;
}

function telephoneFormatCheck(string) {  
	var pattern = /^1[34578]\d{9}$/;  
	if (pattern.test(string)) {  
		return true;  
	}  
	console.log('check mobile phone ' + string + ' failed.');  
	return false;  
}; 

function phoneFormatCheck(phone){
	var pattern= /^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/;
	if(pattern.test(phone)){
		return true;
	}
	return false;
}

function dateFormatCheck(date){
	var pattern=/^\d{4}-\d{2}-\d{2}$/;
	if(!pattern.test(date)){
		return false;
	}
	var valid = (new Date(date)).getTime() > 0;
	return valid;
}

function timestampFormatCheck(timestamp){
	var pattern=/^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$/;
	if(!pattern.test(date)){
		return false;
	}
	var valid = (new Date(timestamp)).getTime() > 0;
	return valid;
}

function integerFormatCheck(i){
	var pattern=/^\d+$/;
	if(!pattern.test(i)){
		return false;
	}
	return true;
}

function dateRangeCheck(r){
	if(!r) return false;
	var i=r.indexOf(" - ");
	if(i<0) return false;
	var from=r.substring(0,i);
	var to=r.substring(i+3,r.length);
	var validfrom = (new Date(from)).getTime() > 0;
	var validto = (new Date(to)).getTime() > 0;
	return validfrom && validto;
}