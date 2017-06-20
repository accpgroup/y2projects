package org.java.ssm.mapper.baseinfo;

import org.java.ssm.entity.baseinfo.ZZSysDictionaryType;

public interface ZZSysDictionaryTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ZZSysDictionaryType record);

    int insertSelective(ZZSysDictionaryType record);

    ZZSysDictionaryType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ZZSysDictionaryType record);

    int updateByPrimaryKeyWithBLOBs(ZZSysDictionaryType record);

    int updateByPrimaryKey(ZZSysDictionaryType record);
}