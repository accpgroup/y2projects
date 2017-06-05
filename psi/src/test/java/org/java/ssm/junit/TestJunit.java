package org.java.ssm.junit;

import java.util.Date;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 这是一个单元测试的例子
 * @ClassName: TestJunit 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月5日 下午11:55:12 
 *
 */
public class TestJunit extends BaseSpringTestCase {

	@Autowired
	Date date;

	@Test
	public void hehe() {
		System.out.println(date.toLocaleString());
	}

}
