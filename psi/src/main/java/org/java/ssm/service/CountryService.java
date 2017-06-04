package org.java.ssm.service;

import org.java.ssm.entity.Country;
import org.java.ssm.vo.CountryQueryVo;

import com.github.pagehelper.PageInfo;

/**
 * 
 * @ClassName: CountryService 
 * @Description: CountryService接口
 * @author 作者：敖燕飞 
 * @date 2017年5月30日 下午5:20:01 
 *
 */
public interface CountryService {
	final String SERVICE_NAME = "org.java.ssm.service.impl.CountryServiceImpl";
	
	/**
	 * 
	 * @Title: findCountryById 
	 * @Description: 通过id查询对象信息 
	 * @param id
	 * @return Country
	 */
	public Country findCountryById(Integer id);

	/**
	 * 
	 * @Title: updateCountry 
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param id
	 * @param country
	 * @return boolean
	 */
	public boolean updateCountry(Integer id, Country country);

	/**
	 * 
	 * @Title:  findCountryByPage
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param pageNum
	 * @param pageSize
	 * @return PageInfo<Country>
	 */
	public PageInfo<Country> findCountryByPage(CountryQueryVo search,int pageNum, int pageSize);

	/**
	 * 添加数据
	 * @Title:  insertCountry
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param country void
	 */
	public void insertCountry(Country country);

	/**
	 * 删除
	 * @Title:  deleteCountryById
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param id void
	 */
	public void deleteCountryById(Integer id);
}
