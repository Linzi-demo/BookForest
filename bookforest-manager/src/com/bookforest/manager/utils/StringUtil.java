package com.bookforest.manager.utils;

public class StringUtil {
	public static boolean isEmpty(String value) {
		return ((value == null) || (value.length() == 0));
	}

	public static boolean isBlank(String value) {
		return ((value == null) || (value.trim().length() == 0));
	}

	public static boolean isNonBlank(String value) {
		return (!(isBlank(value)));
	}

	public static String convertNull(String str, String defaultStr) {
		if (isBlank(str)) {
			return defaultStr;
		}
		return str;
	}

	public static String toSqlInCond(String[] values) {
		StringBuilder strBuilder = new StringBuilder();
		for (int i = 0; i < values.length; ++i) {
			if (i > 0) {
				strBuilder.append(",");
			}
			strBuilder.append("'").append(values[i]).append("'");
		}
		return strBuilder.toString();
	}

	public static String replace(String str, String searchStr, String replaceStr) {
		if (isEmpty(str)) {
			return null;
		}
		return str.replace(searchStr, replaceStr);
	}

	public static String replaceFirst(String str, String searchStr, String replaceStr) {
		if (isEmpty(str)) {
			return null;
		}
		return str.replaceFirst(searchStr, replaceStr);
	}

	/*public static String repeat(String str, int repeat) {
    if (str == null) {
      return null;
    }
    if (repeat <= 0) {
      return "";
    }
    int inputLength = str.length();
    if ((repeat == 1) || (inputLength == 0)) {
      return str;
    }
    if ((inputLength == 1) && (repeat <= 8192)) {
      return repeat(str.charAt(0), repeat);
    }

    int outputLength = inputLength * repeat;
    switch (inputLength)
    {
    case 1:
      return repeat(str.charAt(0), repeat);
    case 2:
      char ch0 = str.charAt(0);
      char ch1 = str.charAt(1);
      char[] output2 = new char[outputLength];
      int i = repeat * 2 - 2; break label141:
      while (true) { output2[i] = ch0;
        output2[(i + 1)] = ch1;

        --i;

        --i; if (i < 0)
        {
          label141: return new String(output2); } }
    }
    StringBuilder buf = new StringBuilder(outputLength);
    for (int i = 0; i < repeat; ++i) {
      buf.append(str);
    }
    return buf.toString();
  }*/

	public static String repeat(char ch, int repeat) {
		char[] buf = new char[repeat];
		for (int i = repeat - 1; i >= 0; --i) {
			buf[i] = ch;
		}
		return new String(buf);
	}
}