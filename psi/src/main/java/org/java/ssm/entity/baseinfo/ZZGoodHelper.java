package org.java.ssm.entity.baseinfo;

public class ZZGoodHelper {
	private String gdname;
	private String	gdmemcode; 
	private String gdsort;
	private String gdnorms;
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

	public String getGdname() {
		return gdname;
	}

	public void setGdname(String gdname) {
		this.gdname = gdname;
	}

	public String getGdmemcode() {
		return gdmemcode;
	}

	public void setGdmemcode(String gdmemcode) {
		this.gdmemcode = gdmemcode;
	}

	public String getGdsort() {
		return gdsort;
	}

	public void setGdsort(String gdsort) {
		this.gdsort = gdsort;
	}

	public String getGdnorms() {
		return gdnorms;
	}

	public void setGdnorms(String gdnorms) {
		this.gdnorms = gdnorms;
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

	@Override
	public String toString() {
		return "GoodHelper [gdname=" + gdname + ", gdmemcode=" + gdmemcode + ", gdsort=" + gdsort + ", gdnorms="
				+ gdnorms + ", page=" + page + ", size=" + size + "]";
	}
	
	
}
