package biz.yf.oa.service;

import java.util.List;
import java.util.Map;

import biz.yf.oa.bo.BizWrapper;
import biz.yf.oa.dao.SettingMapper;

/**
 * 系统设置服务
 * @author Frank
 *
 */
public class SettingService {

	private SettingMapper settingMapper;

	public void setSettingMapper(SettingMapper settingMapper) {
		this.settingMapper = settingMapper;
	}


	/**
	 * 加载用户组列表
	 * @param id 用户ID
	 * @return User对象
	 */
	public BizWrapper listGroup(){
		List<Map<String,Object>> groups = this.settingMapper.listGroup();
		return new BizWrapper().success().setData(groups);
	}
	
	
	public BizWrapper listObs(int pid){
		List<Map<String,Object>> obslist = this.settingMapper.listObs(pid);
		return new BizWrapper().success().setData(obslist); 
	}
}
