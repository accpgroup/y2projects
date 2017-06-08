package org.java.ssm.junit;

import java.util.List;
import java.util.Map;

import org.java.ssm.mapper.SysMenuMapper;
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
public class TestSysMenu extends BaseSpringTestCase{
	
	@Autowired
	private SysMenuMapper mapper;
	
	@Test
	public void findAll() {
		List<Map<String, Object>> menus = mapper.findAllSysMenu();
		List<String> menuModel = mapper.findMenuModel();//模拟菜单权限表
		System.out.println(menus.size());
		System.out.println(menuModel.size());
		
		
		for (int i = 0; i < menuModel.size(); i++) {
			Map<String, Object> map = menus.get(i);
			
			if (map.get("menuModule").equals(map.get("menuPrivilege"))) {
				System.out.println("一级菜单："+map.get("menuName"));
				for (Map<String, Object> m2 : menus) {
					String menuModel2 =  (String) m2.get("menuModule");
					String menuPrivilege2 = (String) m2.get("menuPrivilege");
					String supSubMenu2 = (String) m2.get("supSubMenu");
					if (map.get("menuModule").equals(menuModel2) && !menuModel2.equals(menuPrivilege2) && !menuModel2.equals(supSubMenu2)) {
						System.out.println("\t二级菜单："+m2.get("menuName"));
						
						for (Map<String, Object> m3 : menus) {
							String menuModel3 =  (String) m3.get("menuModule");
							//String menuPrivilege3 = (String) m3.get("menuPrivilege");
							String supSubMenu3 = (String) m3.get("supSubMenu");
							if (menuModel3.equals(menuPrivilege2) && menuModel3.equals(supSubMenu3)) {//!menuModel3.equals(menuPrivilege3) && 
								System.out.println("\t\t三级菜单："+m3.get("menuName"));
							}
						}
					}
					
				}
			}
			
		}
	}

}
