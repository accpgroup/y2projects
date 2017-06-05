package org.java.ssm.controller;

import org.java.ssm.service.SysCodeRuleService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 系统业务表的编码规则的控制器
 * @ClassName: SysCodeRuleController 
 * @Description: 通过页面可以对编码规则进行CRUD 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 上午2:11:29 
 *
 */
@Controller
@RequestMapping("/sysCodeRule")
public class SysCodeRuleController {
	
	@Autowired
	private SysCodeRuleService service;
	
	//测试成功
	@RequestMapping("/getCode.do")
	public String getCode() {
		String code = service.getCodeByTabName("client");
		System.out.println(code);
		return "";
	}
}
