package org.java.ssm.mapper.yangfeimapper;

import java.util.List;


/**
 * 杨飞
 * 销售退货单映射dao
 * @author Administrator
 *
 */
public interface YFMarketReturnMapper {
    
	//获得所有销售退货单的单号
    List<String> getAllBills();
}