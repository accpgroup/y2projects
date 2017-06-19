package org.java.ssm.service.yangfeiservice;
/**
 * 杨飞
 * basestore表数据业务处理层
 * @author Administrator
 *
 */

import java.util.List;

import org.java.ssm.entity.BaseStore;

public interface YFBaseStoreService {
     
	//获得所有可用仓库
	public abstract List<BaseStore> getStores();
}
