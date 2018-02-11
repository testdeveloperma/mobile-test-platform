package com.test.mobile.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.datetime.DateFormatter;

public class DateFormatUtil {

	
	public static String formatToSeconds(Date date){
		DateFormatter dateFormatter = new DateFormatter("");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
		return sdf.format(date);
	}
	
}
