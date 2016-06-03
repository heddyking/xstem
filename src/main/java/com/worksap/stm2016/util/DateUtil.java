package com.worksap.stm2016.util;

import java.sql.Date;
import java.sql.Timestamp;

public class DateUtil {
	public static Date currentDate(){
		return new Date(System.currentTimeMillis());
	}
	
	public static Timestamp currentTimestamp(){
		return new Timestamp(System.currentTimeMillis());
	}
	
	//yyyy-mm-dd
	public static Date parseDate(String dateStr){
		Date date=null;
		try{
			date=Date.valueOf(dateStr);
		}catch(Exception e){
			e.printStackTrace();
		}
		return date;
	}
	
	//yyyy-mm-dd hh:mm:ss[.fffffffff]
	public static Timestamp parseTimestamp(String timestampStr){
		Timestamp ts=null;
		try{
			ts=Timestamp.valueOf(timestampStr);
		}catch(Exception e){
			e.printStackTrace();
		}
		return ts;
	}
}
