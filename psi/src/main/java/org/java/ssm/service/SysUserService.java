package org.java.ssm.service;

import java.util.Map;

/**
 * 系统用户的Service接口
 * @ClassName: SysUserService 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 下午5:13:07 
 *
 */
public interface SysUserService {
	
	Map<String, Object> login(String username);
}
