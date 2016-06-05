$(function(){
	initSkills();
	getInfo();
	
	$("#upload-file-input").on("change", uploadFile);
})

function initSkills(){
	var url="/getSkills";
	var type="get";
	var data={};
	var cb=function(msg){
//		alert(msg.length);
//		$(".select2").select2();
		$("select[id^='inputSkills']").html("")
		for(var k=0;k<msg.length;k++){
			$("select[id^='inputSkills']").append("<option>"+msg[k]+"</option>");
		}
	}
	
	ajax(url,type,data,cb);
}

function getInfo(){
	var url="/ste/personalInfo";
	var type="get";
	var data={};
	var cb=function(msg){
		$("#inputName").val(msg.name);
		$("input[name='gender'][value='"+msg.gender+"']").attr("checked",true); 
		$("#inputDate").val(msg.birthday);
		$("#inputEmail").val(msg.email);
		$("#otherEmail").val(msg.email_self);
		$("#inputTelephone").val(msg.telephone);
		$("#Phone").val(msg.phone);
		$("#inputLocation").val(msg.location);
		$("#inputSkills").val(eval("("+msg.skills+")")).select2();
		$("#inputExperience").val(msg.experiences);
//		var rurl=msg.resume_url?("/downLoadFile?file="+msg.resume_url):null;
		$("#resume_download").attr("href",msg.resume_url);
		if(!msg.resume_url) {
			$("#downloadbtn").html("No Resume");
		}
		else {
			$("#downloadbtn").html("Download Resume");
		}
	}
	
	ajax(url,type,data,cb);
}

function uploadFile() {
    $.ajax({
      url: "/uploadFile",
      type: "POST",
      data: new FormData($("#upload-file-form")[0]),
      enctype: 'multipart/form-data',
      processData: false,
      contentType: false,
      cache: false,
      success: function (msg) {
        // Handle upload success
    	var resume_url=msg;
		if(resume_url) {
			$("#resume_download").attr("href",resume_url);
			$("#downloadbtn").html("Download Resume");
		}
		
        alert("File succesfully uploaded");
      },
      error: function () {
        // Handle upload error
        alert("File not uploaded (perhaps it's too much big)");
      }
    });
} //

function submit(){
	var name=$("#inputName").val();
	var gender=$("input[name='gender']:checked").val(); 
	var birthday=$("#inputDate").val();
	var email=$("#inputEmail").val();
	var email_self=$("#otherEmail").val();
	var telephone=$("#inputTelephone").val();
	var phone=$("#Phone").val();
	var location=$("#inputLocation").val();
	var skills=JSON.stringify($("#inputSkills").val());
	var experiences=$("#inputExperience").val();
	var resume_url=$("#resume_download").attr("href");
	
	
	if(!name) { alert("Please Input Name!"); return;}
	if(name.length>16) { alert("Name is too long!"); return;}
	if(!birthday) { alert("Please Input Birthday!"); return;}
	if(!dateFormatCheck(birthday)){alert("Please select valid date!"); return;}
	if(email_self && !emailFormatCheck(email_self) ){ alert("Other Email Format Error!"); return;}
	if(telephone&& !telephoneFormatCheck(telephone)){ alert("Telephone Format Error!"); return;}
	if(phone&& !phoneFormatCheck(phone)){ alert("Phone Format Error!"); return;}
	if(location&&location.length>64){ alert("Location is too long"); return;}
	if(skills&&skills.length>64){ alert("Skills are too long!"); return;}
	if(experiences&&experiences.length>100){ alert("Experiences are too long!"); return;}
	if(!resume_url) {alert("Please upload resume!"); return;}
		
		
	var json={
			name:name,
			gender:gender,
			birthday:birthday,
			location:location,
			email:email,
			email_self:email_self,
			phone:phone,
			telephone:telephone,
			experiences:experiences,
			skills:skills,
			resume_url:resume_url
	};

	var url="/ste/updatePersonalInfo";
	var type="POST";
	var data={jsonStr:JSON.stringify(json)};
	var cb=function(msg){
		if(msg==1){
			alert("Update Successful");
			getInfo();
		}
		else{
			alert("System Error");
		}
	}
	ajax(url,type,data,cb);
}