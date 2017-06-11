package org.java.ssm.entity;

import java.io.Serializable;

/**
 * 系统角色的实体类
 * @ClassName: SysRole 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 下午7:07:32 
 *
 */
public class SysRole implements Serializable{
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String name;

    private String remark;
    @Override
    public String toString() {
    	return "id="+id+",name="+name+",remark="+remark;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}