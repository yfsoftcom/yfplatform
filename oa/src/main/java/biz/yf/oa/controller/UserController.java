package biz.yf.oa.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import biz.yf.oa.bo.AccessResult;
import biz.yf.oa.bo.User;
import biz.yf.oa.service.LoginService;

@Controller
public class UserController {

	@Resource(name = "loginService")
	private LoginService loginService;
	
	@RequestMapping("user/login.do")	
	public String login(@RequestParam("username") String username,String password, HttpServletRequest request) {
		
		User u = new User();
		u.setLoginName(username);
		u.setLoginPass(password);
		AccessResult ar =  loginService.login(u);
		if(ar.isSuccess()){
			return "default";
		}else{
			return "loginError"; 
		}
	}

}