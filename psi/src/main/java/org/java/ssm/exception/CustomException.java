package org.java.ssm.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * 自定义异常的拦截
 * @ClassName: CustomException 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月5日 下午2:14:42 
 *
 */
public class CustomException implements HandlerExceptionResolver{

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object obj,
			Exception ex) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/err");
		if (ex instanceof UnauthorizedException) {
			mv.addObject("err", "你的权限不足");
		}else{
			mv.addObject("err", ex.getMessage());
		}
		//ex.printStackTrace();
		
		
		return mv;
	}
}
