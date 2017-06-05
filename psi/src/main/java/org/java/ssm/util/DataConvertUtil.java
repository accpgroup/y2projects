package org.java.ssm.util;

import org.apache.commons.lang.StringUtils;

/**
 * 数据转换工具类
 * @ClassName: DataConvertUtil 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 上午1:12:18 
 *
 */
public class DataConvertUtil {
	
	/**
	 * 将字符串数组转换成整形数组
	 * @param sids
	 * @return
	 */
	public static Integer[] getIntegerArrays(String[] sids) {
		Integer[] ids = new Integer[sids.length];
		for (int i = 0; i < sids.length; i++) {
			if (StringUtils.isNotBlank(sids[i])) {
				ids[i] =Integer.parseInt(sids[i]);
			}
		}
		return ids;
	}

	/**
	 * 利用给定的流水位生成第一个流水号
	 * @param glideBit
	 * @return
	 */
	public static String getFirstGlideNumber(Integer glideBit) {
		// 判断是否为空
		if (glideBit == null || glideBit < 3) {
			glideBit = 3;
		}
		String glideNumber = "";
		for (int i = 0; i < glideBit-1; i++) {
			glideNumber = glideNumber + "0";
		}
		//循环结束加1
		glideNumber = glideNumber + "1";
		return glideNumber;
	}
	
	/**
	 * 根据当前的流水号生成下一个流水号
	 * 例如当前流水号是001 那么下一个就是002
	 * @param curGlideNumber  代表当前的流水号
	 * @return
	 * 计算下一个流水的算法
	 * 	在001前加1  String---int 1001
	 * 	整型1001+1=1002 ---- int 1002
	 * 	截取1002前面的1 -----String 002
	 */
	public static String getNextGlideNumber(String curGlideNumber) {
		// 判断是否为空
		if (StringUtils.isBlank(curGlideNumber)) {
			throw new RuntimeException("不能计算下一个流水号");
		}
		
		curGlideNumber = 1 + curGlideNumber;
		Integer icurGlideNumber = Integer.parseInt(curGlideNumber);
		icurGlideNumber++;
		
		curGlideNumber = icurGlideNumber+"";
		
		curGlideNumber = curGlideNumber.substring(1);
		
		return curGlideNumber;
	}
	
	
	public static void main(String[] args) {
		//测试生成流水号
		//System.out.println(getFirstGlideNumber(4));
		//测试下一个流水号
		System.out.println(getNextGlideNumber("002"));
	}
	
}
