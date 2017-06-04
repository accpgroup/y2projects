package org.java.ssm.vo;

import org.java.ssm.bean.CountryBean;
import org.java.ssm.entity.Country;

public class CountryQueryVo {
	
	//测试类信息
	private Country country;
	
	//Country类的扩展类
	private CountryBean countryBean;

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public CountryBean getCountryBean() {
		return countryBean;
	}

	public void setCountryBean(CountryBean countryBean) {
		this.countryBean = countryBean;
	}
}
