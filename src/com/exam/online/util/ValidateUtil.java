package com.exam.online.util;

import java.util.Collection;
//如果字符串等等为空或者==0 为无效
public class ValidateUtil {
	
	/**
	 * 判断字符串有效性
	 */
	public static boolean isValid(String str) {
		if (str == null || "".equals(str.trim())) {
			return false;
		}
		return true;
	}
	
	
	/**
	 * 判断集合的有效性
	 */
	//找到为true，没找到为false
	@SuppressWarnings("rawtypes")
	public static boolean isValid(Collection col) {
		if (col == null || col.isEmpty()) {
			return false;
		}
		return true;
	}
	
	/**
	 * 判断数组是否有效
	 */
	public static boolean isValid(Object[] arr) {
		if (arr == null || arr.length == 0) {
			return false;
		}
		return true;
	}
}
