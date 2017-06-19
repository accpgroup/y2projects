package org.java.ssm.service.yangfeiservice;

import org.java.ssm.entity.InRePageInfo;
import org.java.ssm.entity.InReRecorde;

/**
 * 杨飞
 * 入库单服务层
 * @author Administrator
 *
 */
public interface YFInReRecordeService {
   
	//新增入库单
    int insert(InReRecorde record);
    
    //分页查询入库单
    InRePageInfo selectByPage(InRePageInfo info);
}
