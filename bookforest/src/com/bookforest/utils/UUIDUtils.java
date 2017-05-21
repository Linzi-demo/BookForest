package com.bookforest.utils;

import java.util.UUID;

public class UUIDUtils {

	public static String getUUID()
	{
		String str=UUID.randomUUID().toString();
		String[] split = str.split("-");
		
		String id="";
		for(String s:split)
		{
			id=id+s;
		}
		return id;
	}
	
	public static void main(String[] args) {
		System.out.println(UUIDUtils.getUUID());
	}
}
