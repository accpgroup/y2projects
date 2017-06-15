package org.java.ssm.mapper;

import org.java.ssm.entity.GoodsReRecorde;

public interface GoodsReRecordeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GoodsReRecorde record);

    int insertSelective(GoodsReRecorde record);

    GoodsReRecorde selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GoodsReRecorde record);

    int updateByPrimaryKey(GoodsReRecorde record);
}