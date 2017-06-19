package org.java.ssm.mapper.yangfeimapper;

import java.util.List;

/**
 * 杨飞
 * 采购表映射dao
 * @author Administrator
 *
 */
public interface YFPurchaseRecordeMapper {
    
	//获得所有采购单的单号
	List<String> getAllBills();
}