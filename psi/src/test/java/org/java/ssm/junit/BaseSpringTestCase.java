package org.java.ssm.junit;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

/**
 * spring单元测试基类
 * @ClassName: BaseSpringTestCase 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月5日 下午10:32:30 
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/spring-test.xml"})
@TransactionConfiguration(transactionManager="transactionManager",defaultRollback=true) 
public class BaseSpringTestCase {
	
}
