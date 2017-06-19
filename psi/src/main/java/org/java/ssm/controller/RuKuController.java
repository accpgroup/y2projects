package org.java.ssm.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.java.ssm.entity.BaseStore;
import org.java.ssm.entity.InRePageInfo;
import org.java.ssm.entity.SysUser;
import org.java.ssm.mapper.yangfeimapper.YFInReRecordeMapper;
import org.java.ssm.service.SysDictionaryTypeService;
import org.java.ssm.service.yangfeiservice.YFBaseGoodService;
import org.java.ssm.service.yangfeiservice.YFBaseStoreService;
import org.java.ssm.service.yangfeiservice.YFInReRecordeService;
import org.java.ssm.service.yangfeiservice.YFSysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 杨飞
 * 入库记录控制器
 * @author Administrator
 *
 */
@Controller("rukuController")
@RequestMapping("/ruku")
public class RuKuController {
	
	@Resource(name="yfGoodSer")
	private YFBaseGoodService goodSer;
	
	@Resource(name="yfStoreSer")
	private YFBaseStoreService service; //服务层对象，注解注入
	@Autowired
	private SysDictionaryTypeService typeSer; //调用系统数据字典对象
	
	@Autowired
	private YFSysUserService userSer;   //调用用户表服务层对象
	
	@Autowired
	private YFInReRecordeService inreSer;
	
	//通过分页对象做条件查询到完整的想要的分页对象
    @RequestMapping("/loadAllRuKu.do")
	public String loadAllRuKu(InRePageInfo info,HttpServletRequest request){
    	InRePageInfo pageInfo = inreSer.selectByPage(info);
    	request.setAttribute("pageInfo", pageInfo);
    	
    	List<BaseStore> stores = service.getStores();
    	List<SysUser> users = userSer.getAllUsers();
    	List<Map<String, Object>> mList = typeSer.findSysDictionaryTypeByCode("in_re_type");
    	
    	request.setAttribute("stores",stores);
    	request.setAttribute("users",users);
    	request.setAttribute("mList",mList);
    	
		return "/repository/rukudan";
	}
	
    
    //进入新增入库单页面
    @RequestMapping("/addRuKuDan.do")
    public String addRuKuDan(HttpServletRequest request){
        request.getSession().setAttribute("yf_goods", goodSer.getAllGoods());
    	return "/repository/addRuKuDan";
    }
    
}
