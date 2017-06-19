package org.java.ssm.mapper.yangfeimapper;

import java.util.List;

import org.java.ssm.entity.InRePageInfo;
import org.java.ssm.entity.InReRecorde;

public interface YFInReRecordeMapper {
    
    //新增入库单
    int insert(InReRecorde record);

    //根据分页对象查询结果集
    List<InReRecorde> selectByPage(InRePageInfo info);
    
    //根据分页条件获得总条数
    int getAllCounts(InRePageInfo info);
}