$(function(){
	var url="/userinfo";
	var type="get";
	var data={};
	var cb=function(msg){
		var name=msg["name"];
		var role=msg["role"];
		var userid=msg["userid"];
		var hash=role*100000000+userid;
		var img="https://robohash.org/"+hash+"/bgset_bg2";
		
		$("#myName1").html(name);
		$("#myName2").html(name);
		$(".myimg").attr("src", img);
	}
	var eb=function(msg){
		$("#myName1").html("Error");
		$("#myName2").html("Error");
		$(".myimg").attr("src", "https://robohash.org/error/bgset_bg2");
	}
	ajax(url,type,data,cb,eb);
})