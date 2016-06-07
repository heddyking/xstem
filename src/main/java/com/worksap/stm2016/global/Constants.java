package com.worksap.stm2016.global;

public interface Constants {
	public final String[] skills=new String[]{
		"Java",
		"C",
		"C++",
		"Python",
		"Mysql",
		"Postgresql",
		"Sql",
		"Database",
		"Linux",
		"Js",
		"Android",
		"IOS",
		"Spring",
		"Junit",
		"Jdbc",
		"NLP",
		"ML",
		"Data Mining",
		"Docker",
		"OS",
		"Distributed System",
		"VM",
		"Hardware",
		"Algorithm",
		"Network",
		"Deep Learning",
		"Neural Network",
		"AI",
		"AR",
		"VR",
		"Others",
		"JOOQ",
		"Hibernate",
		"iBatis",
		"PHP"
	};
	
	public final String[] sites=new String[]{
			"Melo Park, No.850 Zhongshan Road, Shanghai",
			"Mountain Rainer, No.600 Longhua Road, Shanghai",
			"Wudaokou, No.230 Helun Road, Beijing",
			"Yan Square, No.123 Siyuan Road, Shenzhen",
			"Sky Bay, No.222 Green Road, Sydney"
	};
	
	public final char[] mail = new char[]{'q','x','e','t','@','u','o','a','d','.','g','j','l','z','c','b','m'};
	
	public final String email_title="WAP Interview Reminder";
	
	public final String email_ste_msg="Hi @STE:\r\n\r\n"+
			   "You are set to interview with WAP! Please confirm that you received this message and that the schedule below works for you.\r\n\r\n"+
			   "Time: @TIME\r\n"+
			   "Location: @LOCATION\r\n"+
			   "Contact Person: @PERSON\r\n"+
			   "Contact Number: @PHONE\r\n"+
			   "Replenish: @REPLENISH\r\n\r\n"+
			   "Regards\r\n\r\n"+
			   "WAP Recruit Team";
	
	public final String email_mg_msg="Hi @MG:\r\n\r\n"+
			   "You have an interview with a candidate. The following are the arrangement.\r\n\r\n"+
			   "Time: @TIME\r\n"+
			   "Candidate: @STE\r\n"+
			   "Gender: @GENDER\r\n"+
			   "Telephone: @TELEPHONE\r\n"+
			   "Resume: @RESUME\r\n"+
			   "Regards\r\n\r\n"+
			   "WAP Recruit Team";
}
