package org.java.ssm.junit;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysPermission;
import org.java.ssm.mapper.SysPermissionMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 
 * @ClassName: TestSysPermission 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月11日 下午9:32:53 
 *
 */
public class TestSysPermission extends BaseSpringTestCase{
	
	@Autowired
	private SysPermissionMapper mapper;

	@Test
	public void findAllSysPermission() {
		List<SysPermission> permissions = mapper.findAllSysPermission();
		Map<String, String> map = new HashMap<>();
		for (SysPermission p : permissions) {
			System.out.println(p.getName());
			map.put(p.getModule(), p.getModulename());
		}
		System.out.println("+++++++++++++++++++++++++++++++++");
		List<String> moduleName = new ArrayList<>(map.values());
		for (String str : moduleName) {
			System.out.println(str);
		}
		
	}
	
}
