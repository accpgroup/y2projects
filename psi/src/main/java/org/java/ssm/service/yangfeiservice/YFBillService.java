package org.java.ssm.service.yangfeiservice;
/**
 * 通用服务层
 * @author Administrator
 *
 */

import java.util.List;

public interface YFBillService {
   
	//获得指定类型的所有的单号
	List<String> getAllBills(String val);
}
