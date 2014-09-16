package biz.yf.oa.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
