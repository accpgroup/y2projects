package org.java.ssm.mapper;

import java.util.List;
import java.util.Map;

/**
 * 
 * @ClassName: SysDictionaryTypeMapper 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月7日 上午09:15:09 
 *
 */
public interface SysDictionaryTypeMapper {
	
	List<Map<String , Object>> findSysDictionaryTypeByCode(String code);
	
}
