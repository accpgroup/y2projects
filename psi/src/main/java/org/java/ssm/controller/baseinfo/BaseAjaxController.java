package org.java.ssm.controller.baseinfo;


import java.util.List;
import java.util.Map;

import org.java.ssm.service.baseinfo.ZZBaseAjaxService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Ajax加载类
 * @author 周壮
 *
 */
@Controller
@RequestMapping("baseAjax")
public class BaseAjaxController {
	@Autowired
	private ZZBaseAjaxService service;
	//加载往来单位下拉框
	@RequestMapping("/unit")
	@ResponseBody
	public List<Map<String, Object>> loadByUnit(){
		List<Map<String, Object>> list = service.loadByUnit();
		return list;
	}
	//加载商品信息下拉框
	@RequestMapping("/good")
	@ResponseBody
	public List<Map<String, Object>> loadByGood(){
		List<Map<String, Object>> list = service.loadByGood();
		System.out.println(list.size());
		return list;
	}
	

	

}
