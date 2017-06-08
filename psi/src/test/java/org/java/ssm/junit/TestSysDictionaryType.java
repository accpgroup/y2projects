package org.java.ssm.junit;

import java.util.List;
import java.util.Map;

import org.java.ssm.mapper.SysDictionaryTypeMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 测试系统数据字典的CRUD
 * @ClassName: TestSysDictionaryType 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月7日 上午11:38:12 
 *
 */
public class TestSysDictionaryType extends BaseSpringTestCase{
	
	@Autowired
	private SysDictionaryTypeMapper mapper;
	
	//测试成功
	@Test
	public void findSysDictionaryTypeByCode(){
		List<Map<String, Object>> list =  mapper.findSysDictionaryTypeByCode("source");
		System.out.println("结果集的大小："+list.size());
		for (Map<String, Object> map : list) {
			System.out.println(map.get("value"));
		}
	}
	
}
