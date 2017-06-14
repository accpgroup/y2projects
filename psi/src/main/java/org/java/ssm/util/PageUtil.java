package org.java.ssm.util;


import javax.servlet.http.HttpServletRequest;

public class PageUtil{
	private int pageNum = 1;
	private int pageSize = 10;
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public PageUtil() {
	
	}
	public PageUtil(int pageNum,int pageSize) {
		this.pageNum = pageNum;
		this.pageSize = pageSize;
	}
	
	
	public static PageUtil getPageUtil(HttpServletRequest request) {
		PageUtil pageUtil = new PageUtil();
		String index = request.getParameter("index");
		if (index!=null && !index.trim().equals("")) {
			pageUtil.setPageNum(Integer.parseInt(index));
		}
		String pageSize = request.getParameter("pageSize");
		if (pageSize!=null && !pageSize.trim().equals("")) {
			pageUtil.setPageSize(Integer.parseInt(pageSize));
		}
		return pageUtil;
	}
}
