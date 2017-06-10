package org.java.ssm.controller;

import org.java.ssm.entity.Country;
import org.java.ssm.service.CountryService;
import org.java.ssm.vo.CountryQueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

/**
 * 
 * @ClassName: TestController 
 * @Description: 这个类是一个测试类  测试搭建框架时使用 与其他的不相关 
 * @author 作者：敖燕飞 
 * @date 2017年5月30日 下午4:48:42 
 *
 */
@Controller("testController")
@RequestMapping("/test")
public class TestController {
	
	@Autowired
	private CountryService service;
	
	//显示编辑页面
	/*@RequestMapping("/delCountry/{id}")
	public ModelAndView editCountry(@PathVariable Integer id){
		Country country = service.findCountryById(id);
		ModelAndView mv = new ModelAndView("/test/editPage");
		mv.addObject("country", country);
		return mv;
	}*/
	
	@RequestMapping("/delCountry/{id}")
	public String delCountry(@PathVariable Integer id) {
		System.out.println(""+id);
		service.deleteCountryById(id);
		
		return "redirect:/test/load.do";
	}
	
	//显示测试json页面
	@RequestMapping("/testJsonPage.do")
	public String testJsonPage() {
		System.out.println("显示测试json页面");
		
		return "/test/testJson";
	}

	@RequestMapping("/saveCountry.do")
	public String saveCountry(Country country) {
		service.insertCountry(country);
		System.out.println("添加成功！！！");
		
		return "redirect:load.do";
	}
	
	//显示添加页面
	@RequestMapping("/addPage.do")
	public ModelAndView addPage() {
		return new ModelAndView("/test/addPage");
	}
	
	//加载页面
	@RequestMapping("/load.do")
	public ModelAndView load(CountryQueryVo search,Integer index,Integer size) {
		int pageNum = 1;
		int pageSize = 5;
		if (index!=null && index!=0) {
			pageNum = index;
		}
		if (size!=null && size!=0) {
			pageSize = size;
		}
		
		PageInfo<Country> pageInfo =  service.findCountryByPage(search,pageNum,pageSize);
	/*	System.out.println("总页数："+pageInfo.getPages());
		System.out.println("首页："+ 1);//首页
		System.out.println("上一页："+pageInfo.getPrePage());//上一页
		System.out.println("下一页："+ pageInfo.getNextPage());//下一页
		System.out.println("尾页："+pageInfo.getPages());//尾页
		*/
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/test/load");
		mv.addObject("countryList", pageInfo.getList());
		mv.addObject("firstPage", 1);//首页
		mv.addObject("prePage", pageInfo.getPrePage());//上一页
		mv.addObject("nextPage", pageInfo.getNextPage());//下一页
		mv.addObject("lastPage", pageInfo.getPages());//尾页
		mv.addObject("index", index);
		mv.addObject("search", search);
		
		System.out.println("");
		return mv;
	}
	
	//修改商品信息
	@RequestMapping("/updateConutry.do")
	public ModelAndView updateConutry(Integer id) {
		
		Country country = service.findCountryById(id);
		
		boolean flag = service.updateCountry(id,country);
		
		ModelAndView mv = new ModelAndView(); 
		
		return mv;
	}
	
	
}
