package org.java.ssm.mapper;

import java.util.List;

import org.java.ssm.entity.Country;
import org.java.ssm.vo.CountryQueryVo;

public interface CountryMapper {
	
	/**
	 * 查找表中所有数据
	 * @param search 
	 * @return
	 */
	List<Country> findCountryByPage(CountryQueryVo search);
	
	
    int deleteByPrimaryKey(Integer id);

    int insert(Country record);

    int insertSelective(Country record);

    Country selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Country record);

    int updateByPrimaryKey(Country record);

	
}