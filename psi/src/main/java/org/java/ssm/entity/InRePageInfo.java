package org.java.ssm.entity;

import java.io.Serializable;
import java.util.ArrayList;
/**
 * 杨飞
 * 入库单分页对象实体类
 * @author Administrator
 *
 */
import java.util.List;
public class InRePageInfo implements Serializable {
    
    //第一步部分，查询条件部分
	private  Integer repositoryId;  //仓库id
	private  String inReType;       //入库类型
	private  String inReCode;    //入库单号
	private  String beginTime;   //开始时间
	private  String endTime;     //结束时间
	private  Integer dealEmpId;   //经手人
	private  Integer createEmpId;   //制单人  
	
	

	//第二部分，具体分页部分
	private  List<InReRecorde>  inReList = new ArrayList<InReRecorde>();
	private  Integer  index = 1;   //当前页 默认为第一页 
	private  Integer  count = 5;   //每页显示几条 默认5条
	private  Integer  sum;         //总条数
	private  Integer  startIndex;  //查询语句起始下标
	
	
	public Integer getStartIndex() {
		return  (index-1)*count;
	}
	public Integer getMaxPage(){
		Integer max = sum%count==0?sum/count:sum/count+1;
		return max;
	}
	
	public Integer getRepositoryId() {
		return repositoryId;
	}
	public void setRepositoryId(Integer repositoryId) {
		this.repositoryId = repositoryId;
	}
	public String getInReType() {
		return inReType;
	}
	public void setInReType(String inReType) {
		this.inReType = inReType;
	}
	public String getInReCode() {
		return inReCode;
	}
	public void setInReCode(String inReCode) {
		this.inReCode = inReCode;
	}
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public Integer getDealEmpId() {
		return dealEmpId;
	}
	public void setDealEmpId(Integer dealEmpId) {
		this.dealEmpId = dealEmpId;
	}
	public Integer getCreateEmpId() {
		return createEmpId;
	}
	public void setCreateEmpId(Integer createEmpId) {
		this.createEmpId = createEmpId;
	}
	public List<InReRecorde> getInReList() {
		return inReList;
	}
	public void setInReList(List<InReRecorde> inReList) {
		this.inReList = inReList;
	}
	public Integer getIndex() {
		return index;
	}
	public void setIndex(Integer index) {
		this.index = index;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getSum() {
		return sum;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	
}
