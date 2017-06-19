package org.java.ssm.service.yangfeiservice.impl;

import java.util.List;

import org.apache.regexp.recompile;
import org.java.ssm.mapper.AllotGoodsMapper;
import org.java.ssm.mapper.yangfeimapper.YFAllotRecordeMapper;
import org.java.ssm.mapper.yangfeimapper.YFMarketReturnMapper;
import org.java.ssm.mapper.yangfeimapper.YFPurchaseRecordeMapper;
import org.java.ssm.service.yangfeiservice.YFBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("yfBillSer")
public class YFBillServiceImpl implements YFBillService {
    
	@Autowired
	private YFPurchaseRecordeMapper purchaseMapper;
	@Autowired
	private YFAllotRecordeMapper allotMapper;
	@Autowired
	private YFMarketReturnMapper markeMapper;
	
	@Override
	public List<String> getAllBills(String val) {
		if("采购".equals(val)){
			return purchaseMapper.getAllBills();
		}
		if("调拨".equals(val)){
			return allotMapper.getAllBills();
		}
		if("销售退货".equals(val)){
			return markeMapper.getAllBills();
		}else{
			return null;
		}
	}

}
