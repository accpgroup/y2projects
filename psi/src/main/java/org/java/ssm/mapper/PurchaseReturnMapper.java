package org.java.ssm.mapper;

import org.java.ssm.entity.PurchaseReturn;

public interface PurchaseReturnMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PurchaseReturn record);

    int insertSelective(PurchaseReturn record);

    PurchaseReturn selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PurchaseReturn record);

    int updateByPrimaryKey(PurchaseReturn record);
}