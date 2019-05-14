package com.environment.contrller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.environment.exception.AdsDateException;
import com.environment.mypuls.mapper.DataServerMapper;
import com.environment.vo.EquipmentDataVo;
import com.google.common.collect.Lists;

@Controller
@RequestMapping("/server")
public class ServerController extends BaseTOAction {
	@Autowired
	private DataServerMapper dataServerMapper;
	
	@RequestMapping("/getEnvironmentData")
	@ResponseBody
	public Map<String,Object> getEnvironmentData(String devices){
		Map<String, Object> map = new HashMap<>();
		try{
			String[] tmp = devices.split(",");
			List<String> elist = Lists.newArrayList(tmp);
			map.put("elist", elist);
			List<EquipmentDataVo> list = this.dataServerMapper.getEnvironmentData(map);
			map.clear();
			map.put("msg", "success");
			map.put("datas", list);
		}catch(Exception e){
			e.printStackTrace();
			map.put("msg", "error");
			map.put("datas", e.getMessage());
		}
		return map;
	}
	
	@RequestMapping("/getEnvironmentDataDual")
	@ResponseBody
	public Map<String,Object> getEnvironmentDataDual(String device,String starttime,String endtime){
		Map<String, Object> map = new HashMap<>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date1 = sdf.parse(starttime);
			Date date2 = sdf.parse(endtime);
			if(new Date().getTime() - date1.getTime()>7*24*60*60*1000) {
				throw new AdsDateException("开始时间不能超过7天以前");
			}
			if(date1.getTime() > date2.getTime()) {
				throw new AdsDateException("开始日期不能大于结束日期");
			}
			if(date2.getTime() - date1.getTime()> 7*24*60*60*1000) {
				throw new AdsDateException("时间间隔不能超过7天");
			}
			map.put("device", device);
			map.put("starttime", starttime+" 00:00:00");
			map.put("endtime", endtime+" 23:59:59");
			List<EquipmentDataVo> list = this.dataServerMapper.getEnvironmentDataDual(map);
			map.clear();
			map.put("msg", "success");
			map.put("datas", list);
		} catch (ParseException e) {
			map.put("msg", "error");
			map.put("datas", "日期格式错误");
			e.printStackTrace();
		} catch (AdsDateException e) {
			map.put("msg", "error");
			map.put("datas", e.getMessage());
		}
		return map;
	}
	
	@RequestMapping("/getEnvironmentData2")
	@ResponseBody
	public String getEnvironmentData2(String equipments){
		return "hello world";
	}
}
