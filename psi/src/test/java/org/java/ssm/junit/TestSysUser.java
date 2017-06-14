package org.java.ssm.junit;

import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysUser;
import org.java.ssm.mapper.SysUserMapper;
import org.java.ssm.util.DateUtil;
import org.java.ssm.util.PasswordUtil;
import org.java.ssm.vo.SysUserQueryVo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.sf.jsqlparser.statement.select.First;

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
	
	
	@Test
	public void findAllSysUserByQueryVo(){
		SysUserQueryVo vo = new SysUserQueryVo();
		List<Map<String, Object>> list =  mapper.findAllSysUserByQueryVo(vo);
		System.out.println(list.size());
		for (Map<String, Object> map : list) {
			System.out.println("ID："+map.get("id")+"用户名："+map.get("name")+"部门："+map.get("deptName"));
		}
	}
	
	
	//查看所有员工信息
	@Test
	public void findAllSysUser() {
		//带条件查询并分页
		//按部门查询
		//按员工的状态查询【启用】【禁用】
		//按员工姓名、账号、手机、职位、角色、查询
		//
		SysUserQueryVo queryVo = new SysUserQueryVo();
		//queryVo.getUserBean().setDeptid(9999);
		queryVo.getUserBean().setName("a");
		
		PageHelper.offsetPage(1, 10);
		
		List<SysUser> list =  mapper.findSysUserByQueryVo(queryVo);
		
		PageInfo<SysUser> pageInfo = new PageInfo<>(list);
		
		System.out.println("总页数："+pageInfo.getPages());
		System.out.println("首页："+ 1);//首页
		System.out.println("上一页："+pageInfo.getPrePage());//上一页
		System.out.println("下一页："+ pageInfo.getNextPage());//下一页
		System.out.println("尾页："+pageInfo.getPages());//尾页
		
		
		for (SysUser sysUser : pageInfo.getList()) {
			System.out.println("账号："+sysUser.getName()+""
					+ "姓名："+sysUser.getCnname());
		}
		
		
	}
	
	
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
		user.setTelephone("18771110538");//手机号 输入
		user.setDeptid(1);//部门 下拉框选择
		//职位 输入
		//部门负责人
		//Email
		//QQ
		
		
		// 暂时先不测试权限
		//
	}
	
}
