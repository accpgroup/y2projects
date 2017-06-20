package org.java.ssm.entity.baseinfo;

public class ZZUnitHelper {
	private String unitName;
	private String unitMemCode;
	private String unitLinkMan1;
	private Integer page;
	private Integer size;
	
	
	public void judge(){
		if(page==null){
			page=1;
		}
		if(size==null){
			size=5;
		}
	}
	
	public Integer getPage() {
		return page;
	}


	public void setPage(Integer page) {
		this.page = page;
	}


	public Integer getSize() {
		return size;
	}


	public void setSize(Integer size) {
		this.size = size;
	}


	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	public String getUnitMemCode() {
		return unitMemCode;
	}
	public void setUnitMemCode(String unitMemCode) {
		this.unitMemCode = unitMemCode;
	}
	public String getUnitLinkMan1() {
		return unitLinkMan1;
	}
	public void setUnitLinkMan1(String unitLinkMan1) {
		this.unitLinkMan1 = unitLinkMan1;
	}

	@Override
	public String toString() {
		return "UnitHelper [unitName=" + unitName + ", unitMemCode=" + unitMemCode + ", unitLinkMan1=" + unitLinkMan1
				+ ", page=" + page + ", size=" + size + "]";
	}
	
	
}
