package org.java.ssm.mapper;

import org.java.ssm.entity.PurchaseRecorde;

public interface PurchaseRecordeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PurchaseRecorde record);

    int insertSelective(PurchaseRecorde record);

    PurchaseRecorde selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PurchaseRecorde record);

    int updateByPrimaryKey(PurchaseRecorde record);
}