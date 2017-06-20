package org.java.ssm.controller.baseinfo;

import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.java.ssm.entity.baseinfo.ZZBaseStore;
import org.java.ssm.service.baseinfo.ZZBaseStoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

/**
 * 仓库管理控制器
 * @author 周壮
 *
 */
@Controller
@RequestMapping("storeInfo")
public class BaseStoreController {
	@Autowired
	private ZZBaseStoreService service;
	//进入首页并加载所有
	@RequestMapping("/goto")
	public ModelAndView first(ModelAndView mv,Integer size,Integer page){
		PageInfo<ZZBaseStore> pageInfo=service.findAll(page,size);
		mv.addObject("list", pageInfo.getList());
		mv.addObject("p",pageInfo);
		mv.setViewName("/baseinfo/storeinfo/store_list");
		return mv;
	}

	//添加操作
	@RequestMapping("/add")
	public String add(ModelAndView mv){
		return "/baseinfo/storeinfo/store_add";
	}

	//修改操作
	@RequestMapping("/update")
	public String update(ModelAndView mv,Integer id,HttpSession session){
		ZZBaseStore ac=service.selectByPrimaryKey(id);
		mv.addObject("k",ac);
		session.setAttribute("bs", ac);
		return "/baseinfo/storeinfo/store_update";
	}
	
	//确认修改
	@RequestMapping("/update2")
	@ResponseBody
	public String update2(ModelAndView mv,ZZBaseStore bt){
		service.updateByPrimaryKeySelective(bt);
		return "good";
	}

	//删除操作
	@RequestMapping("/delete")
	public ModelAndView delete(ModelAndView mv,ZZBaseStore bg){
		service.updateByPrimaryKeySelective(bg);
		return first(mv,null,null);
	}

	//添加操作
	@RequestMapping("/add2")
	public String add2(ModelAndView mv,ZZBaseStore bs){
		service.insertSelective(bs);
		return "/baseinfo/costinfo/cost_add";
	}
	
	//导出到excel
			@RequestMapping("/excel")
			public ModelAndView excel(ModelAndView mv,HttpServletRequest request,HttpServletResponse response,Integer size,Integer page){
				try {
					// 取得session中的数据
					PageInfo<ZZBaseStore> pageInfo=service.findAll(page,size);
					List<ZZBaseStore> list=pageInfo.getList();
					// 产生输出流，用于指定把数据写入到哪一个客户端
					OutputStream out = response.getOutputStream();

					String fname = "数据报表.xls";
					// 转换编码方式，防止乱码
					String fileName = URLEncoder.encode(fname, "utf-8");

					// 弹出下载界面
					response.setContentType("application/vnd-ms.excel");
					response.setHeader("Content-disposition", "attachment;fileName="
							+ fileName);

					/**********************************************************************/
					// 创建一个输出流，用于指定，把数据，写入到哪一个文件中

					// 创建一个工作簿----这个工作簿需要流来产生所以，类型名称为: WritableWorkbook
					WritableWorkbook wk = Workbook.createWorkbook(out);

					// 创建工作簿中的表单------- WritableSheet
					WritableSheet st = wk.createSheet("商品信息", 0); // (表单名称，下标)

					/********************** 调整表格的样式 ***************************************/
					st.getSettings().setDefaultColumnWidth(20);// 设置列宽

					// 设置字体
					WritableFont ft = new WritableFont(WritableFont.ARIAL, 16,
							WritableFont.BOLD);// （字体类型，字号，是否加粗）

					// 设置标题单元格的样式，并且，指定单元格中，采用哪一种字体
					WritableCellFormat wcf = new WritableCellFormat(ft);
					wcf.setAlignment(Alignment.CENTRE);// 居中对齐
					wcf.setWrap(true);// 空间不够，自动换行显示
					wcf.setBorder(Border.ALL, BorderLineStyle.THIN);// (全部的边框，细边框)

					// 数据格式
					WritableFont ft2 = new WritableFont(WritableFont.ARIAL, 16,
							WritableFont.NO_BOLD);
					WritableCellFormat wcf2 = new WritableCellFormat(ft2);
					wcf2.setAlignment(Alignment.CENTRE);// 居中对齐
					wcf2.setWrap(true);// 空间不够，自动换行显示
					wcf2.setBorder(Border.ALL, BorderLineStyle.THIN);// (全部的边框，细边框)

					/********************** 添加标题行 **************************************/
					Label labTitle = new Label(0, 0, "商品信息", wcf);
					st.addCell(labTitle);
					// 合并单元格
					st.mergeCells(0, 0, 14, 0);// 开始列下标,开始行下标,结束列下标,结束行下列

					/*************************************************************/

					// 表单中包含的是单元格(cell),单元格中显示的内容其实是由Label(标签)显示
					Label labId = new Label(0, 1, "序号", wcf);// (列下标，行下标，内容)
					Label labName = new Label(1, 1, "仓库名", wcf);
					Label labGender = new Label(2, 1, "地址", wcf);
					Label labClazz = new Label(3, 1, "备注", wcf);
					// 把产生的label放在表单中，指定单元格的位置
					
					st.addCell(labId);
					st.addCell(labName);
					st.addCell(labGender);
					st.addCell(labClazz);

					/********** 把数据表的数据写入到文件 ******************************/

					for (int i = 0; i < list.size(); i++) {
						Label id = new Label(0, i + 2, i + 1 + "", wcf2);
						Label gender = new Label(1, i + 2,list.get(i).getStname(),
								wcf2);
						Label clazz = new Label(2, i + 2, list.get(i).getStaddress(),
								wcf2);
						Label score = new Label(3, i + 2,list.get(i).getStremark(),
								wcf2);
						

						// 添加数据
						st.addCell(id);
						st.addCell(gender);
						st.addCell(clazz);
						st.addCell(score);
					}

					/****************************************/
					// 利用WritableWorkbook,进行输出 ，产生文件
					wk.write();
					// 关闭流
					wk.close();
					out.close();
				} catch (Exception e) {
					e.printStackTrace();
				}

				return first(mv, null,null);
			}
			

}
