package biz.yf.oa.controller.home;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import biz.yf.oa.bo.BizWrapper;
import biz.yf.oa.bo.OAUser;
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
		
		OAUser u = null;
		BizWrapper wrapper =  loginService.auth(username,password,getIpAddr(request));
		if(wrapper.isSuccess()){
			wrapper = userService.findUserByName(username);
			if(wrapper.isSuccess()){
				u = wrapper.getData();
				request.getSession().setAttribute("SESSION_USER", u);
				if(u.isAdmin()){
					return "redirect:/home/dashboard.do";
				}else{
					return "redirect:/admin/dashboard.do";
				}
			}
			
//			//加载工作流信息
//			Workflow workflow = new BasicWorkflow("testuser");
//			DefaultConfiguration config = new DefaultConfiguration();
//			workflow.setConfiguration(config);
//			try {
//				//long workflowId = workflow.initialize("example", 100, null);
//				List list = workflow.query(new WorkflowExpressionQuery());
//				for(Iterator it = list.iterator();it.hasNext();){
//					Object o = it.next();
//					System.out.println(o);
//				}
//			}catch(Exception ex){
//				ex.printStackTrace();
//			}
//			
		}
		
		request.setAttribute("ERROR", wrapper.getMsg());
		return "yf01/login"; 
		
	}
	
	/**
	 * 获取客户端远程的IP
	 * @param request
	 * @return
	 */
	public String getIpAddr(HttpServletRequest request) {  
	    String ip = request.getHeader("x-forwarded-for");  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("Proxy-Client-IP");  
	    }  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("WL-Proxy-Client-IP");  
	    }  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getRemoteAddr();  
	    }  
	    return ip;  
	}  
	
	@RequestMapping("home/dashboard.do")
	public String dashboard(HttpServletRequest request){
		System.out.println("HOME DASHBOARD ENTER");
		System.out.println("Load Items");
		
		return "yf01/index";
	}
	
	

}
