package org.java.ssm.junit;

import org.java.ssm.entity.SysRole;
import org.java.ssm.mapper.SysRoleMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 测试系统角色
 * @ClassName: TestSysRole 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 下午7:13:48 
 *
 */
public class TestSysRole extends BaseSpringTestCase{
	
	@Autowired
	private SysRoleMapper mapper;
	
	//测试添加用户角色信息
	@Test
	public void insertSysRole() {
		//
		SysRole sysRole = new SysRole();
		/*sysRole.setName("系统高级管理员");
		sysRole.setRemark("系统高级管理员角色不允许改名，也不允许修改其操作权限");*/
		
		sysRole.setName("普通管理员");
		sysRole.setRemark("负责录入系统的基础数据，允许修改其操作权限");
		
		
		int count = mapper.insert(sysRole);
		
				
		System.out.println("受影响行数："+count);
		
		
	}

}
