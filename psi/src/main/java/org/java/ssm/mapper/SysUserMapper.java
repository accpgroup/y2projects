package org.java.ssm.mapper;

import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysUser;
import org.java.ssm.vo.SysUserQueryVo;

/**
 * 
 * @ClassName: SysUserMapper 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月8日 下午2:05:09 
 *
 */
public interface SysUserMapper {
	
	
	List<Map<String, Object>> findAllSysUserByQueryVo(SysUserQueryVo queryVo);
	
	
	/**
	 * @Title:  findSysUserByQueryVo
	 * @Description: 多条件带分页查询 
	 * @param queryVo
	 * @return List<SysUser>
	 */
	List<SysUser> findSysUserByQueryVo(SysUserQueryVo queryVo);
	
	/*简单的用户登录没有控制权限*/
	List<Map<String, Object>> login(String username);
	
	
	/*自动生成的*/
    int deleteByPrimaryKey(Integer id);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);


	
}