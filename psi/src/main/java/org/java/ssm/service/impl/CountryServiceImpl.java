package org.java.ssm.service.impl;

import java.util.List;

import org.java.ssm.entity.Country;
import org.java.ssm.mapper.CountryMapper;
import org.java.ssm.service.CountryService;
import org.java.ssm.vo.CountryQueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 
 * @ClassName: CountryServiceImpl 
 * @Description: CountryService接口的实现类
 * @author 作者：敖燕飞 
 * @date 2017年5月30日 下午5:20:21 
 *
 */
@Service("countryService")
public class CountryServiceImpl implements CountryService {
	
	@Autowired
	private CountryMapper mapper;

	@Override
	public Country findCountryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateCountry(Integer id, Country country) {
		return false;
	}
	@Override
	public PageInfo<Country> findCountryByPage(CountryQueryVo search, int pageNum, int pageSize) {
		//在加载数据之前设置分页
		PageHelper.startPage(pageNum,pageSize);
		List<Country> list = mapper.findCountryByPage(search);
		//System.out.println("查出所有集合的数量："+list.size());
		
		PageInfo<Country> pageInfo = new PageInfo<>(list);
		//System.out.println("放入PageInfo的数量："+list.size());
		
		return pageInfo;
	}

	@Override
	public void insertCountry(Country country) {
		mapper.insert(country);
	}

	@Override
	public void deleteCountryById(Integer id) {
		mapper.deleteByPrimaryKey(id);
	}
}
