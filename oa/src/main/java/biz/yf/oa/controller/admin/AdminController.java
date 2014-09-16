package biz.yf.oa.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	
	
	@RequestMapping("admin/dashboard.do")
	public String dashboard(HttpServletRequest request){
		System.out.println("ADMIN DASHBOARD ENTER!");
		
		return "yf01/index";
	}
	
}
