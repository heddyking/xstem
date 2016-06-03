package com.worksap.stm2016.util;

public class StringUtil {
	public static String regular(String str){
		str=str.trim();
		str=str.replaceAll("[\\r\\n\\v\\t\\f ]", "");
		str=str.toLowerCase();
		
		return str;
	}
}
