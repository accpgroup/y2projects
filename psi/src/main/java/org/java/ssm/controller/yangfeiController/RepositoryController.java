package org.java.ssm.controller.yangfeiController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.java.ssm.entity.BaseStore;
import org.java.ssm.mapper.yangfeimapper.YFBaseStoreMapper;
import org.java.ssm.service.SysCodeRuleService;
import org.java.ssm.service.SysDictionaryTypeService;
import org.java.ssm.service.yangfeiservice.YFBaseStoreService;
import org.java.ssm.service.yangfeiservice.YFBillService;
import org.java.ssm.service.yangfeiservice.YFSysUserService;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 杨飞
 * 与仓库信息表对象的控制层
 * @author Administrator
 *
 */
@Controller("repController")
@RequestMapping("/store")
public class RepositoryController {
   
	@Resource(name="yfStoreSer")
	private YFBaseStoreService service; //服务层对象，注解注入
	@Autowired
	private SysCodeRuleService codeSer;  //系统调用生成单号服务
	@Autowired
	private SysDictionaryTypeService typeSer; //调用系统数据字典对象
	@Autowired
	private YFSysUserService userSer;   //调用用户表服务层对象
	@Resource(name="yfBillSer")
	private YFBillService billSer;
	
	//获得所有可用仓库信息
	@RequestMapping("/getReps.do")
	@ResponseBody
	public Map<String, Object> getReps(){
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("relist", service.getStores());
		map.put("code", codeSer.getCodeByTabName("in_re_recorde"));
		map.put("rukeType",typeSer.findSysDictionaryTypeByCode("in_re_type"));
		map.put("emps", userSer.getAllUsers());
		return map;
	}
	
	//获得指定类型的所有入库单相关单的单号
	@RequestMapping("getAllBills.do")
	@ResponseBody
	public List<String> getAllBills(@RequestParam String val){
		List<String> billList = billSer.getAllBills(val);
		return billList;
	}
	
	//通过指定的入库单号获得当前商品明细
	@RequestMapping("/getInReGoods")
	@ResponseBody
	public List<Map<String, Object>> getInReGoods(String inReCode){
		
		return null;
	}
}
