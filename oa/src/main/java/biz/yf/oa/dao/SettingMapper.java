package biz.yf.oa.dao;

import java.util.List;
import java.util.Map;

/**
 * 关于系统设置的存储
 * @author Frank
 *
 */
public interface SettingMapper extends CommonMapper {

	
	public List<Map<String,Object>> listGroup();
	
	public List<Map<String,Object>> listObs(int pid);
	
	
}
