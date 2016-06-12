package com.worksap.stm2016.util;

import javax.servlet.http.HttpServletRequest;

public class HttpUtil {
	public static String url(HttpServletRequest request) {
	    StringBuffer requestURL = request.getRequestURL();
	    String queryString = request.getQueryString();

	    if (queryString == null) {
	        return requestURL.toString();
	    } else {
	        return requestURL.append('?').append(queryString).toString();
	    }
	}
}
