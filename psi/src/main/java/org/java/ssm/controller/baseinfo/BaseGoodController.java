package org.java.ssm.controller.baseinfo;

import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.java.ssm.entity.baseinfo.ZZBaseGood;
import org.java.ssm.entity.baseinfo.ZZGoodHelper;
import org.java.ssm.service.baseinfo.ZZBaseGoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
 * 商品信息管理控制器
 * @author 周壮
 *
 */
@Controller
@RequestMapping("goodInfo")
public class BaseGoodController {
	@Autowired
	private ZZBaseGoodService service;
	//导出到excel
	@RequestMapping("/excel")
	public ModelAndView excel(ModelAndView mv,HttpServletRequest request,HttpServletResponse response,ZZGoodHelper gh){
		try {
			gh.judge();
			// 取得session中的数据
			PageInfo<ZZBaseGood> pageInfo=service.findAll(gh);
			List<ZZBaseGood> list=pageInfo.getList();
			System.out.println(list.size());
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
			Label labName = new Label(1, 1, "商品名", wcf);
			Label labGender = new Label(2, 1, "助记码", wcf);
			Label labClazz = new Label(3, 1, "生产厂家", wcf);
			Label labBir = new Label(4, 1, "类型", wcf);
			Label labScore = new Label(5, 1, "型号", wcf);
			Label labResult = new Label(6, 1, "规格", wcf);
			
			Label labResult1 = new Label(7, 1, "单位", wcf);
			Label labResult2 = new Label(8, 1, "产地", wcf);
			Label labResult3 = new Label(9, 1, "最大库存", wcf);
			Label labResult4 = new Label(10, 1, "最小库存", wcf);
			Label labResult5 = new Label(11, 1, "售价", wcf);
			Label labResult6 = new Label(12, 1, "进价", wcf);
			Label labResult7 = new Label(13, 1, "信息", wcf);
			Label labResult8 = new Label(14, 1, "备注", wcf);
			// 把产生的label放在表单中，指定单元格的位置
			st.addCell(labResult1);
			st.addCell(labResult2);
			st.addCell(labResult3);
			st.addCell(labResult4);
			st.addCell(labResult5);
			st.addCell(labResult6);
			st.addCell(labResult7);
			st.addCell(labResult8);
			
			st.addCell(labId);
			st.addCell(labName);
			st.addCell(labGender);
			st.addCell(labClazz);
			st.addCell(labScore);
			st.addCell(labBir);
			st.addCell(labResult);

			/********** 把数据表的数据写入到文件 ******************************/

			for (int i = 0; i < list.size(); i++) {
				Label id = new Label(0, i + 2, i + 1 + "", wcf2);
				Label name = new Label(1, i + 2, list.get(i).getGdname(), wcf2);
				Label gender = new Label(2, i + 2,list.get(i).getGdmemcode(),
						wcf2);
				Label clazz = new Label(3, i + 2, list.get(i).getGdwoocu(),
						wcf2);
				Label score = new Label(4, i + 2,list.get(i).getGdsort(),
						wcf2);
				Label bir = new Label(5, i + 2, list.get(i).getGdtype(), wcf2);
				Label result = new Label(6, i + 2,list.get(i).getGdnorms(),
						wcf2);
				
				Label result1 = new Label(7, i + 2,list.get(i).getGdunit(),
						wcf2);
				Label result2 = new Label(8, i + 2,list.get(i).getGdorigin(),
						wcf2);
				Label result3 = new Label(9, i + 2,list.get(i).getGdmax().toString(),
						wcf2);
				Label result4 = new Label(10, i + 2,list.get(i).getGdmin().toString(),
						wcf2);
				Label result5 = new Label(11, i + 2,list.get(i).getGdpreprice().toString(),
						wcf2);
				Label result6 = new Label(12, i + 2,list.get(i).getGdcosprice().toString(),
						wcf2);
				Label result7 = new Label(13, i + 2,list.get(i).getGdpostfree(),
						wcf2);
				Label result8 = new Label(14, i + 2,list.get(i).getGdremark(),
						wcf2);

				// 添加数据
				st.addCell(id);
				st.addCell(name);
				st.addCell(gender);
				st.addCell(clazz);
				st.addCell(score);
				st.addCell(bir);
				st.addCell(result);
				st.addCell(result1);
				st.addCell(result2);
				st.addCell(result3);
				st.addCell(result4);
				st.addCell(result5);
				st.addCell(result6);
				st.addCell(result7);
				st.addCell(result8);
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

		return first(mv, gh);
	}
	//进入首页并加载所有
	@RequestMapping("/goto")
	public ModelAndView first(ModelAndView mv,ZZGoodHelper gh){
		gh.judge();
		PageInfo<ZZBaseGood> pageInfo=service.findAll(gh);
		mv.addObject("list", pageInfo.getList());
		mv.addObject("p",pageInfo);
		mv.addObject("h",gh);
		mv.setViewName("/baseinfo/goodinfo/allgood_list");
		return mv;
	}
	//查看详情
	@RequestMapping("/look")
	public ModelAndView look(ModelAndView mv,Integer id){
		ZZBaseGood good=service.selectByPrimaryKey(id);
		mv.addObject("u",good);
		mv.setViewName("/baseinfo/goodinfo/good_look");
		return mv;
	}
	//添加操作
	@RequestMapping("/add")
	public String add(ModelAndView mv){
		return "/baseinfo/goodinfo/good_add";
	}

	//确认保存操作
	@RequestMapping("/add2")
	public ModelAndView add2(ModelAndView mv,ZZBaseGood bg){
		int suc=service.insertSelective(bg);
		if(suc==1){
			mv.addObject("conf", "添加成功!");
		}else{
			mv.addObject("conf","添加失败");
		}
		return first(mv,new ZZGoodHelper());
	}

	//确认修改
	@RequestMapping("/update2")
	public ModelAndView update2(ModelAndView mv,ZZBaseGood bg){
		int suc=service.updateByPrimaryKeySelective(bg);
		if(suc==1){
			mv.addObject("conf", "修改成功!");
		}else{
			mv.addObject("conf","修改失败");
		}
		return first(mv,new ZZGoodHelper());
	}

	//修改操作
	@RequestMapping("/update")
	public ModelAndView update(ModelAndView mv,Integer id){
		ZZBaseGood good=service.selectByPrimaryKey(id);
		mv.addObject("u",good);
		mv.setViewName("/baseinfo/goodinfo/good_update");
		return mv;
	}

	//删除操作
	@RequestMapping("/delete")
	public ModelAndView delete(ModelAndView mv,ZZBaseGood bg){
		service.updateByPrimaryKeySelective(bg);
		return first(mv,new ZZGoodHelper());
	}

}
