package com.bookforest.manager.utils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;



public class Maps {
	public static boolean isEmpty(Map<?, ?> map) {
		return ((map == null) || (map.isEmpty()));
	}

	public static boolean isEmpty(Map<?, ?> map, Object key) {
		if (map == null)
			return true;
		if (!(map.containsKey(key)))
			return true;
		Object obj = map.get(key);
		if (obj == null)
			return true;
		if (obj instanceof String) {
			return StringUtil.isBlank((String) obj);
		}
		return false;
	}

	public static Object get(Map<?, ?> map, Object key, Object defValue) {
		Object obj = map.get(key);

		if (obj == null) {
			return defValue;
		}
		return obj;
	}

	public static String getStringEx(Map<?, ?> map, Object key) {
		String v = getString(map, key);
		if (v == null)
			throw new NullPointerException(v);
		return v;
	}

	public static String getString(Map<?, ?> map, Object key) {
		return getString(map, key, null);
	}

	public static String getString(Map<?, ?> map, Object key, String defValue) {
		Object obj = get(map, key, defValue);
		if (obj == null)
			return null;
		return toString(obj);
	}

	private static String toString(Object obj) {
		if (obj instanceof String)
			return ((String) obj);
		if (obj instanceof Date) {
			return TimeUtil.format((Date) obj);
		}
		return obj.toString();
	}

	public static boolean getBoolean(Map<?, ?> map, Object key) {
		return getBoolean(map, key, false);
	}

	public static boolean getBoolean(Map<?, ?> map, Object key, boolean defValue) {
		Object obj = map.get(key);
		if (obj == null) {
			return defValue;
		}
		if (obj instanceof Boolean) {
			return ((Boolean) obj).booleanValue();
		}
		return Boolean.parseBoolean(toString(obj));
	}

	public static int getInt(Map<?, ?> map, Object key, int defValue) {
		Object obj = map.get(key);
		if (obj == null) {
			return defValue;
		}
		if (obj instanceof Integer)
			return ((Integer) obj).intValue();
		String v = toString(obj);
		if (StringUtil.isBlank(v)) {
			return defValue;
		}

		return Integer.parseInt(v);
	}

	public static int getInt(Map<?, ?> map, Object key) {
		Object obj = map.get(key);
		if (obj == null) {
			throw new NullPointerException(key.toString());
		}
		if (obj instanceof Integer) {
			return ((Integer) obj).intValue();
		}
		String v = toString(obj);
		if (StringUtil.isBlank(v)) {
			throw new NullPointerException(key.toString());
		}
		return Integer.parseInt(v);
	}

	public static long getLong(Map<?, ?> map, Object key, long defValue) {
		Object obj = map.get(key);
		if (obj == null) {
			return defValue;
		}
		if (obj instanceof Long) {
			return ((Long) obj).longValue();
		}
		if (obj instanceof Integer) {
			return ((Integer) obj).intValue();
		}
		String v = toString(obj);
		if (StringUtil.isBlank(v)) {
			return defValue;
		}
		return Long.parseLong(v);
	}

	public static long getLong(Map<?, ?> map, Object key) {
		Object obj = map.get(key);
		if (obj == null) {
			throw new NullPointerException(key.toString());
		}
		if (obj instanceof Long) {
			return ((Long) obj).longValue();
		}
		if (obj instanceof Integer) {
			return ((Integer) obj).intValue();
		}
		String v = toString(obj);
		if (StringUtil.isBlank(v)) {
			throw new NullPointerException(key.toString());
		}
		return Long.parseLong(v);
	}

	public static <T> List<T> getList(Map<?, ?> map, Object key) {
		return getList(map, key, null);
	}

	public static <T> List<T> getList(Map<?, ?> map, Object key, List<T> defValue) {
		Object obj = map.get(key);
		if (obj == null) {
			return defValue;
		}
		if (obj instanceof List) {
			return ((List) obj);
		}
		return null;
	}

	public static <K, V> Map<K, V> getMap(Map<?, ?> map, Object key) {
		return getMap(map, key, null);
	}

	public static <K, V> Map<K, V> getMap(Map<?, ?> map, Object key, Map<K, V> defValue) {
		Object obj = map.get(key);
		if (obj == null) {
			return defValue;
		}
		if (obj instanceof Map) {
			return ((Map) obj);
		}
		return null;
	}

	public static void addAllToItem(Map<String, List<Object>> map, String key, List<?> value) {
		List list = (List) map.get(key);
		if (list == null) {
			list = new ArrayList();
			map.put(key, list);
		}
		list.addAll(value);
	}

	public static void addToItem(Map<String, List<Object>> map, String key, Object value) {
		List list = (List) map.get(key);
		if (list == null) {
			list = new ArrayList();
			map.put(key, list);
		}
		list.add(value);
	}
}