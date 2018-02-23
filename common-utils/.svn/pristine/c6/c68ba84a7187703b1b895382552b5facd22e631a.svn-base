package com.szc.common.utils;

import java.lang.reflect.Field;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Random;

public class Util {

	public static LinkedHashMap<String, Object> getModelFiled(Object bean) {
		LinkedHashMap<String, Object> benaMap = new LinkedHashMap<String, Object>();
		try {
			Class<?> cls = (Class<?>) bean.getClass(); 
			Field[] field = cls.getDeclaredFields();
			for (int i = 0; i < field.length; i++) {
				Field f = field[i];
				f.setAccessible(true);
				benaMap.put(f.getName(), f.get(bean));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return benaMap;
	}
	
	public static String getDate(String format){
		SimpleDateFormat simDF = new SimpleDateFormat(format);
		return simDF.format(new Date());
	}
	
	public static String create(int scFor) {
		String[] a2 = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
		Random r = new Random();
		String result = "";
		while (result.length() < scFor) {
			int temp = r.nextInt(a2.length);
			result = result + a2[temp];
		}
		return result;
	}
	
	public static Date strToDate(String date, String format){
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		try {
			return sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static boolean isBlank(String s){
		return (s==null || "".equals(s));
	}

	/**
	 * 日期加减
	 * @return
	 */
	@SuppressWarnings("static-access")
	public static String getSumDate(String date, int i, String f){
		SimpleDateFormat sdf = new SimpleDateFormat(f);
		//获得某日+1年-1天的日期
		String redate = "";
		SimpleDateFormat format = new SimpleDateFormat(f);
		try {
			Date d = sdf.parse(date);
			Calendar c = Calendar.getInstance();
			c.setTime(d);
			c.add(c.DATE, i);
			Date temp_date = c.getTime(); 
			redate = format.format(temp_date);//结果2012-11-30
		} catch (Exception e) {
			e.printStackTrace();
		}
		return redate;
	}
	
}
