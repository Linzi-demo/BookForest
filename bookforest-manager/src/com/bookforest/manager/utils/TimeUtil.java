package com.bookforest.manager.utils;


import java.io.PrintStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class TimeUtil {
	private static final String[] FORMAT_LEN = { "yyyy", "yyyyMM", "yyyy-MM", "yyyyMMdd",
			"yyyy-MM-dd",  "yyyy-MM-dd HH", "yyyyMMddHHmmss", "yyyyMMddHHmmssS", "yyyy-MM-dd HH:mm",
			"yyyy-MM-dd HH:mm:ss",  "yyyy-MM-dd HH:mm:ss.S" };

	public static final String getSysDate() throws Exception {
		return getSysTime("yyyy-MM-dd");
	}

	public static final String getSysTime() throws Exception {
		return getSysTime("yyyy-MM-dd HH:mm:ss");
	}

	public static final String getSysTime(String format) throws Exception {
		return format(new java.util.Date(getCurrentTimeMillis()), format);
	}

	public static final long getCurrentTimeMillis() {
		return System.currentTimeMillis();
	}

	public static final String format(java.util.Date time, String format) {
		if (time == null) {
			return "";
		}
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(time);
	}

	public static final String format(java.util.Date time) {
		return format(time, "yyyy-MM-dd HH:mm:ss");
	}

	public static final java.util.Date parse(String dateStr) throws Exception {
		String format = getTimestampFormat(dateStr);
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.parse(dateStr);
	}

	public static final String getTimestampFormat(String value) throws Exception {
		String format = FORMAT_LEN[value.length()];
		if (format == null)
			throw new Exception("无法解析正确的日期格式[" + value + "]");
		return format;
	}

	public static final java.util.Date dateAddAmount(java.util.Date date, int field, int amount) {
		Calendar cd = Calendar.getInstance();
		cd.setTime(date);
		cd.add(field, amount);
		return cd.getTime();
	}

	public static final String dateAddAmount(String dateStr, String format, int field, int amount) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat(getTimestampFormat(dateStr));
		java.util.Date date = sdf.parse(dateStr);
		java.util.Date newDate = dateAddAmount(date, field, amount);
		return format(newDate, format);
	}

	public static final String dataAddMonth(String dateStr, String format, int months) throws Exception {
		return dateAddAmount(dateStr, format, 2, months);
	}

	public static final String dataAddDay(String dateStr, String format, int days) throws Exception {
		return dateAddAmount(dateStr, format, 5, days);
	}

	public static final String getPrevMonth() throws Exception {
		java.util.Date date = dateAddAmount(new java.util.Date(System.currentTimeMillis()), 2, -1);
		return format(date, "yyyyMM");
	}

	public static final int getDaysOfMonth(String dateStr) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat(getTimestampFormat(dateStr));
		java.util.Date date = sdf.parse(dateStr);
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar.getActualMaximum(5);
	}

	public static final int getDaysLeftOfMonth(String dateStr) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat(getTimestampFormat(dateStr));
		java.util.Date date = sdf.parse(dateStr);
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		int days = calendar.getActualMaximum(5);
		int currDay = calendar.get(5);
		return (days - currDay);
	}

	public static java.util.Date sqlDate2UtilDate(java.sql.Date date) throws Exception {
		if (date == null) {
			return null;
		}
		return new java.util.Date(date.getTime());
	}

	public static String sqlDate2String(java.sql.Date date) throws Exception {
		if (date == null) {
			return null;
		}
		return format(sqlDate2UtilDate(date));
	}

	public static Timestamp string2SqlTimestamp(String dateStr) throws Exception {
		if (StringUtil.isEmpty(dateStr)) {
			return null;
		}
		return utilDate2SqlTimestamp(parse(dateStr));
	}

	public static java.sql.Date string2SqlDate(String dateStr) throws Exception {
		if (StringUtil.isEmpty(dateStr)) {
			return null;
		}
		return utilDate2SqlDate(parse(dateStr));
	}

	public static java.util.Date sqlTimestamp2UtilDate(Timestamp time) throws Exception {
		if (time == null) {
			return null;
		}
		return new java.util.Date(time.getTime());
	}

	public static String sqlTimestamp2String(Timestamp time) throws Exception {
		if (time == null) {
			return null;
		}
		return format(sqlTimestamp2UtilDate(time));
	}

	public static java.sql.Date utilDate2SqlDate(java.util.Date date) throws Exception {
		if (date == null) {
			return null;
		}
		return new java.sql.Date(date.getTime());
	}

	public static Timestamp utilDate2SqlTimestamp(java.util.Date date) throws Exception {
		if (date == null) {
			return null;
		}
		return new Timestamp(date.getTime());
	}

	public static void main(String[] args) throws Exception {
		System.out.println(getDaysLeftOfMonth("20170115"));
	}
}
