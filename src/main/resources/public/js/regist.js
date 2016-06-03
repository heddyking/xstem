function regist(){
	  var name=$("#name").val();
	  var email=$("#email").val();
	  var password=$("#password").val();
	  var password_=$("#password_").val();
	  
	  if(!name){
		  alert("Name should not be empty!");
		  return;
	  }
	  if(name.length>16){
		  alert("Name is too long!");
		  return;
	  }
	  if(!email){
		  alert("Email should not be empty!");
		  return;
	  }
	  if(!emailFormatCheck(email)){
		  alert("Email wrong format!");
		  return;
	  }
	  if(!password){
		  alert("Password should not be empty!");
		  return;
	  }
	  if(password.length<3 || password.length>16){
	      alert("Password should have 3~16 chars");	
	      return;
	  }
	  if(password!=password_){
		  alert("Password twice types not the same!");
		  return;
	  }
	  
	  var url="/regist";
	  var type="get";
	  var data={email:email,name:name,password:password};
	  var cb=function(msg){
		  if(msg<=0){
			  alert("System error! Please Retry.");
		  }
		  else{
			  alert("Regist Success! You can Signin.");
		  }
	  }
	  ajax(url,type,data,cb);
}