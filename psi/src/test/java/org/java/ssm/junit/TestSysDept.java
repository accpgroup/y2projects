package org.java.ssm.junit;

import org.java.ssm.entity.SysDept;
import org.java.ssm.mapper.SysDeptMapper;
import org.java.ssm.util.PinyinUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 测试部门表的CRUD
 * @ClassName: TestSysDept 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 下午7:29:17 
 *
 */
public class TestSysDept extends BaseSpringTestCase{
	
	@Autowired
	private SysDeptMapper mapper;
	
	@Test
	public void insertSysDept() {
		
		SysDept dept = new SysDept();
		dept.setName("仓储部");//部门名称
		dept.setCode("CC");//部门编码
		dept.setSuppercode("CEO");//上级部门编号
		
		String pycode = PinyinUtils.converterToFirstSpell(dept.getName());//获取拼音Code
		dept.setPycode(pycode);//部门拼音码
		dept.setRemark("负责管理公司产品的存储");//备注
		
		
		mapper.insert(dept);
		
	}

}
