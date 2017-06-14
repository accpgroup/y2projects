package org.java.ssm.mapper;

import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysRole;

/**
 * 
 * @ClassName: SysRoleMapper 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 上午11:23:17 
 *
 */
public interface SysRoleMapper {
	
	List<Map<String, Object>> findSysRolePermissionByRoleId(String roleId);
	
	List<SysRole> findAllSysRole();
	/**
	 * @Title:  deleteByPrimaryKey
	 * @Description: 根据主键ID删除角色信息
	 * @param id
	 * @return int
	 */
    int deleteByPrimaryKey(Integer id);
    
    /**
     * @Title:  insert
     * @Description: 添加角色信息
     * @param record
     * @return int
     */
    int insert(SysRole role);
    
    /**
     * @Title:  insertSelective
     * @Description:  添加一条角色信息，只添加不为null的字段
     * @param role
     * @return int
     */
    int insertSelective(SysRole role);

    /**
     * @Title:  selectByPrimaryKey
     * @Description: 根据主键来查询角色信息 
     * @param id
     * @return SysRole
     */
    SysRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRole role);
    
    /**
     * @Title:  updateByPrimaryKey
     * @Description: 根据主键更新角色信息 
     * @param role
     * @return int
     */
    int updateByPrimaryKey(SysRole role);
    
	
}