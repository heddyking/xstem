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
	var valid = (new Date(timestamp)).getTime() > 0;
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