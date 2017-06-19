package org.java.ssm.mapper.yangfeimapper;

import java.util.List;

import org.java.ssm.entity.BaseStore;

public interface YFBaseStoreMapper {
	
    //获得所有可用仓库
    public List<BaseStore> getStores();
}