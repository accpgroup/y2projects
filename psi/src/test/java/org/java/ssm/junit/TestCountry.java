package org.java.ssm.junit;

import org.java.ssm.entity.Country;
import org.java.ssm.mapper.CountryMapper;
import org.java.ssm.service.CountryService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TestCountry extends BaseSpringTestCase {
	
	@Autowired
	private CountryMapper mapper;
	
	@Test
	public void findCountryById() {
		Country country = mapper.selectByPrimaryKey(1);
		System.out.println("测试"+country.getCountryname());
	}
	
}
