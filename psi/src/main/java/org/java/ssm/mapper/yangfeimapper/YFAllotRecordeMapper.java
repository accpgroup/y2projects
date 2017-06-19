package org.java.ssm.mapper.yangfeimapper;

import java.util.List;

import org.java.ssm.entity.AllotRecorde;

/**
 * 杨飞
 * 调拨单映射dao
 * @author Administrator
 *
 */
public interface YFAllotRecordeMapper {
    
	//获得所有调拨单的单号
    List<String> getAllBills();
}