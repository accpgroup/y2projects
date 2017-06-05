package org.java.ssm.junit;

import java.util.Date;
import java.util.List;
import java.util.Map;


import org.apache.commons.lang.time.DateFormatUtils;
import org.java.ssm.mapper.SysCodeRuleMapper;
import org.java.ssm.util.DataConvertUtil;
import org.java.ssm.util.DateUtil;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 测试系统编号的CRUD
 * 
 * @ClassName: TestSysCodeRule
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 作者：敖燕飞
 * @date 2017年6月6日 上午12:17:06
 *
 */

public class TestSysCodeRule extends BaseSpringTestCase {

	@Autowired
	private SysCodeRuleMapper mapper;

	//获取编码测试成功
	@Test
	public void getCodeByTabName() {
		/*
		 * String code = mapper.getCodeByTabName("client");
		 * System.out.println("编码"+code);
		 */
		List<Map<String, Object>> list = mapper.findSysCodeRules("client");
		if (list.isEmpty() || list.size() != 1) {
			throw new RuntimeException("不能生成编码");
		}
		System.out.println("个数：" + list.size());

		Map<String, Object> sysCodeRule = list.get(0);

		String available = (String) sysCodeRule.get("available");
		if (available.equals("Y")) {// 如果是被修改过或者是新添加的 available== Y
			// 获取流水位
			Integer glideBit = (Integer) sysCodeRule.get("glideBit");

			// 生成第一个流水号001
			String firstGlideNumber = DataConvertUtil.getFirstGlideNumber(glideBit);
			// 下一个流水号
			String nextGlideNumber = DataConvertUtil.getNextGlideNumber(firstGlideNumber);

			// 获得系统当前时间 格式yyyyMMdd 20170505 存入数据表中的当前日期字段
			String curDate = DateUtil.getTodateString();

			// 生成编码
			String code = sysCodeRule.get("areaPrefix") + "-"
					+ DateFormatUtils.format(new Date(), (String) sysCodeRule.get("areaTime")) + "-" + firstGlideNumber;

			// 设置下一个流水号的值
			sysCodeRule.put("nextseq", nextGlideNumber);
			// 当前日期
			sysCodeRule.put("curDate", curDate);
			// 是否被修改过
			sysCodeRule.put("available", "N");

			mapper.updateSysCodeRule(sysCodeRule);

			System.out.println("需要返回页面显示的编号："+ code);

		} else {
			// 是否被修改过或新添加的=='N'
			// * 获取代码规则表中的当前日期字段的值
			String curDate = (String) sysCodeRule.get("curDate");

			// * 获取系统的当前日期、
			String sysCurDate = DateUtil.getTodateString();
			// * 如果代码规则表中的当前日期字段的值==系统的当前日期、
			if (curDate.equals(sysCurDate)) {
				// * 获取下一个序列号 ="002"
				String nextseq = (String) sysCodeRule.get("nextseq");

				// * 计算新的流水号 003
				String nextGlideNumber = DataConvertUtil.getNextGlideNumber(nextseq);

				// * 生成编码
				// * 编码前缀+"-"+利用日期位格式生成当前的日期[yyyy-MM-dd ]+"-"+001
				String code = sysCodeRule.get("areaPrefix") + "-"
						+ DateFormatUtils.format(new Date(), (String) sysCodeRule.get("areaTime")) + "-" + nextseq;
				// * 修改代码规则表
				// * 下一个序列号="003"
				sysCodeRule.put("nextseq", nextGlideNumber);
				// * 当前日期 20110914
				// * 是否被修改过='N'
				mapper.updateSysCodeRule(sysCodeRule);

				System.out.println("需要返回页面显示的编号："+ code);
			} else { // 如果代码规则表中的当前日期字段的值!=系统的当前日期、

				// * 获取 流水位=3
				Integer glideBit = (Integer) sysCodeRule.get("glideBit");
				// * 生成第一个流水号 001
				String firstGlideNumber = DataConvertUtil.getFirstGlideNumber(glideBit);
				// * 计算下一个流水号 002
				String nextGlideNumber = DataConvertUtil.getNextGlideNumber(firstGlideNumber);
				// * 生成客户编码
				// * 编码前缀+"-"+利用日期位格式生成当前的日期[yyyy-MM-dd ]+"-"+001

				String code = sysCodeRule.get("areaPrefix") + "-"
						+ DateFormatUtils.format(new Date(), (String) sysCodeRule.get("areaTime")) + "-" + firstGlideNumber;

				// * 修改代码规则表
				// * 下一个序列号="002"
				sysCodeRule.put("nextseq", nextGlideNumber);
				// 当前日期
				sysCodeRule.put("curDate", sysCurDate);
				// 是否被修改过
				sysCodeRule.put("available", "N");
				
				mapper.updateSysCodeRule(sysCodeRule);

				System.out.println("需要返回页面显示的编号："+ code);
			}
		}

	}
}
