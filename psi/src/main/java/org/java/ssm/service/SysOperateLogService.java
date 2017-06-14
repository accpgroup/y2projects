package org.java.ssm.service;

import java.util.List;
import java.util.Map;

import org.java.ssm.util.PageUtil;
import org.java.ssm.vo.SysOperateLogQueryVo;

import com.github.pagehelper.PageInfo;

public interface SysOperateLogService {
	List<Map<String, Object>> findAllSysOperateLog();
	PageInfo<Map<String, Object>> findAllSysOperateLog(SysOperateLogQueryVo queryVo,PageUtil pageUtil);
}
