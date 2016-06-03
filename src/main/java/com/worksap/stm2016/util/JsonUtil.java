package com.worksap.stm2016.util;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonUtil {
	public static List<Map<String,Object>> parseList(String jsonStr) throws JsonParseException, JsonMappingException, IOException{
		 List<Map<String,Object>> results=null;
		 results = new ObjectMapper().readValue(jsonStr, List.class);
		 return results;
	}
	
	public static Map<String,Object> parseMap(String jsonStr) throws JsonParseException, JsonMappingException, IOException{
		Map<String,Object> result=null;
		result=new ObjectMapper().readValue(jsonStr, Map.class);
		return result;
	}
}
