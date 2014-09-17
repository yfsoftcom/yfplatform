package biz.yf.oa.controller.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import biz.yf.oa.bo.BizWrapper;
import biz.yf.oa.service.SettingService;

@Controller
public class SettingController {

	/**
	 * 配置组件的初始化
	 * @param request
	 * @return
	 */
	@RequestMapping("setting/init.do")
	public String init(HttpServletRequest request){
		
		return "yf01/setting";
	}
	
	
	/********************************
	 *******针对用户的操作 START******
	 ********************************/
	
	
	
	@Resource(name = "settingService") 
	private SettingService settingService;
	
	/**
	 * 添加一个用户组
	 * @param request 
	 * @return 
	 */
	@RequestMapping("group/add.do")
	public String addGroup(@RequestParam("groupname") String groupname,HttpServletRequest request){
		
		//TODO通过设置mapper接口进行数据的持久化
		
		
		return "";
	}
	
	
	/**
	 * 查询用户组的列表
	 * @param request
	 * @return
	 */
	@RequestMapping("group/list.do")
	public String listGroup(HttpServletRequest request){
		
		//TODO通过设置mapper接口读取数据
		
		BizWrapper bizResult  = settingService.listGroup();
		if(bizResult.isSuccess()){
			//查询成功
			request.setAttribute("grouplist", bizResult.getData());
		}else{
			System.out.println("失败！"+bizResult.getMsg());
		}
		
		return "yf01/setting/groups";
	}
	
	
	
	/********************************
	 *******针对用户的操作 END  ******
	 ********************************/
	
	
	/********************************
	 *******针对OBS的操作 START  ******
	 ********************************/
	
	/**
	 * 查询用户组的列表
	 * @param request
	 * @return
	 */
	@RequestMapping("obs/list.do")
	public String listObs(HttpServletRequest request){
		
		//TODO通过设置mapper接口读取数据
		
		BizWrapper bizResult  = settingService.listObs(0);
		if(bizResult.isSuccess()){
			//查询成功
			request.setAttribute("obslist", bizResult.getData());
		}else{
			System.out.println("失败！"+bizResult.getMsg());
		}
		
		return "yf01/setting/obs";
	}
	
	
	/********************************
	 *******针对OBS的操作 END  ******
	 ********************************/
	
}
