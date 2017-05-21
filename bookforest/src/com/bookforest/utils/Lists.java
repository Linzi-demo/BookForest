package com.bookforest.utils;

import java.util.List;
import java.util.Map;


public class Lists {
	public static <K, V> Map<K, V> firstMap(List<Map<K, V>> list) {
		return getMap(list, 0);
	}

	public static <K, V> Map<K, V> getMap(List<Map<K, V>> list, int index) {
		if ((list != null) && (list.size() > index)) {
			Map obj = (Map) list.get(index);
			if (obj instanceof Map) {
				return obj;
			}
		}
		return null;
	}

	public static <T> List<T> getList(List<List<T>> list, int index) {
		if ((list != null) && (list.size() > index)) {
			List obj = (List) list.get(index);
			if (obj instanceof List) {
				return obj;
			}
		}
		return null;
	}

	public static String getString(List<Map<String, Object>> list, int index, Object key) {
		return getString(list, index, key, null);
	}

	public static String getString(List<Map<String, Object>> list, int index, Object key, String defValue) {
		Map map = getMap(list, index);
		return ((map != null) ? Maps.getString(map, key, defValue) : defValue);
	}

	public static int getInt(List<Map<String, Object>> list, int index, Object key) {
		return getInt(list, index, key, null);
	}

	public static int getInt(List<Map<String, Object>> list, int index, Object key, Integer defValue) {
		Map map = getMap(list, index);
		return ((map != null) ? Maps.getInt(map, key, defValue.intValue()) : defValue.intValue());
	}

	public static long getLong(List<Map<String, Object>> list, int index, Object key) {
		return getLong(list, index, key, null);
	}

	public static long getLong(List<Map<String, Object>> list, int index, Object key, Long defValue) {
		Map map = getMap(list, index);
		return ((map != null) ? Maps.getLong(map, key, defValue.longValue()) : defValue.longValue());
	}

	public static boolean isEmpty(List<?> list) {
		return ((list == null) || (list.size() <= 0));
	}
}