package com.environment.mypuls.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.environment.vo.EquipmentDataVo;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author pactera
 *
 */
public interface DataServerMapper extends BaseMapper<EquipmentDataVo> {
	/**
	 * 实时数据接口查询方法
	 * @param map
	 * @return
	 */
	List<EquipmentDataVo> getEnvironmentData(Map<String,Object> map);
	
	/**
	 * 区间数据接口查询方法
	 * @param map
	 * @return
	 */
	List<EquipmentDataVo> getEnvironmentDataDual(Map<String,Object> map);
	
}