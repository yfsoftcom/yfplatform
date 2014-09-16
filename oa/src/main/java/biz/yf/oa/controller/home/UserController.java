package biz.yf.oa.controller.home;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import biz.yf.oa.bo.BizWrapper;
import biz.yf.oa.bo.User;
import biz.yf.oa.service.LoginService;
import biz.yf.oa.service.UserService;

@Controller
public class UserController {

	@Resource(name = "loginService")
	private LoginService loginService;
	
	@Resource(name = "userService")
	private UserService userService;
	
	
	@RequestMapping("user/login.do")	
	public String login(@RequestParam("username") String username,String password, HttpServletRequest request) {
		
		User u = new User();
		u.setLoginName(username);
		u.setLoginPass(password);
		BizWrapper ar =  loginService.login(u);
		if(ar.isSuccess()){
			u = userService.findUserById(u.getId()).getData();
			request.getSession().setAttribute("SESSION_USER", u);
			if(u.isAdmin()){
				return "redirect:/home/dashboard.do";
			}else{
				return "redirect:/admin/dashboard.do";
			}
		}else{
			return "loginError"; 
		}
	}
	
	
	@RequestMapping("home/dashboard.do")
	public String dashboard(HttpServletRequest request){
		System.out.println("HOME DASHBOARD ENTER");
		System.out.println("Load Items");
		
		return "yf01/index";
	}
	
	

}
