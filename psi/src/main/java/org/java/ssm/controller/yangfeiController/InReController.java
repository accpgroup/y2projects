package org.java.ssm.controller.yangfeiController;
/**
 * 杨飞
 * 入库单控制层
 * @author Administrator
 *
 */

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.java.ssm.entity.InReGoods;
import org.java.ssm.entity.InReRecorde;
import org.java.ssm.mapper.yangfeimapper.YFInReGoodsMapper;
import org.java.ssm.service.yangfeiservice.YFInReGoodsService;
import org.java.ssm.service.yangfeiservice.YFInReRecordeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("inReController")
@RequestMapping("/inRe")
public class InReController {
  
	@Resource(name="inReSer")
	private YFInReRecordeService inReSer;
	
	@Resource(name="inReGoodsSer")
	private YFInReGoodsService inReGoodsSer;
	
	//新增入库单
	@RequestMapping("/addCode.do")
	public String addCode(InReRecorde inReRecorde,String[] inAmount,String[] remark,String[] goodsId ){
		List<InReGoods> inReList = new ArrayList<InReGoods>();
		for(int i=0;i<remark.length;i++){
			InReGoods goods = new InReGoods();
			goods.setGoodsId(Integer.parseInt(goodsId[i]));
			goods.setInAmount(Integer.parseInt(inAmount[i]));
			goods.setRemark(remark[i]);
			goods.setInReCode(inReRecorde.getInReCode());
			inReList.add(goods);
		}
		
		inReSer.insert(inReRecorde);  //将入库单保存
		
		inReGoodsSer.insert(inReList);//保存商品明细
		
		return "/repository/rukudan";
	}
}
