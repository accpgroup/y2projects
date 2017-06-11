package org.java.ssm.junit;

import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysUser;
import org.java.ssm.mapper.SysUserMapper;
import org.java.ssm.util.DateUtil;
import org.java.ssm.util.PasswordUtil;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 测试系统用户的CRUD
 * @ClassName: TestSysUser 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月7日 下午6:50:49 
 *
 */
public class TestSysUser extends BaseSpringTestCase{
	
	@Autowired
	private SysUserMapper mapper;
	
	
	//测试用户登录
	@Test
	public void login() {//测试成功
		String username = "admin";
		List<Map<String, Object>> users = mapper.login(username);
		System.out.println(users.size());
		System.out.println("用户密码："+users.get(0).get("password"));
	}
	
	//添加用户的信息
	@Test
	public void insert() {
		
		SysUser user = new SysUser();
		
		user.setName("admin");//账户名（登录使用）
		//加密后的密码
		String pwd = PasswordUtil.createAdminPwd("123456", "ayf");
		user.setPassword(pwd);//密码（登录使用）
		
		user.setCnname("贤心");//用户的中文名称
		
		//获得系统当前时间
		String curDate = DateUtil.getCurrentTime();
		user.setCreatetime(curDate);//创建时间
		user.setCreator("系统开发者");//创建人
		user.setUpdater("系统开发者");//修改人
		user.setUpdatetime(curDate);//修改时间
		user.setDeptid(null);//部门ID
		user.setRoleid(1);//角色ID
		user.setDutyname("系统管理员");//职位名称
		user.setRemark("系统管理员不能删除，也不能修改相关信息");//备注说明
		
		mapper.insert(user);
	}
	
	
	//添加系统的用户
	public void insertSysUser() {
		SysUser user = new SysUser();
		
		user.setName("zz");//登录账号 输入
		user.setPassword("123456");//登录密码 输入
		user.setCnname("周壮");//姓名 输入
		user.setTelephone("");//手机号 输入
		//部门 下拉框选择
		//职位 输入
		//部门负责人
		//Email
		//QQ
		
		
		// 暂时先不测试权限
		//
		
		
	}
	
}
