package org.java.ssm.mapper;

import java.util.List;
import java.util.Map;

import org.java.ssm.vo.SysOperateLogQueryVo;

/**
 * @ClassName: SysOperateLogMapper 
 * @Description: 系统操作日志 
 * @author 作者：敖燕飞 
 * @date 2017年6月12日 下午11:07:45 
 *
 */
public interface SysOperateLogMapper {
	
	List<Map<String, Object>> findAllSysOperateLog();

	List<Map<String, Object>> findAllSysOperateLog(SysOperateLogQueryVo queryVo);
}
