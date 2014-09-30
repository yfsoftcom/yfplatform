package biz.yf.oa.rbac.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class RbacInterceptor implements HandlerInterceptor {

	private static final Logger logger = Logger.getLogger(RbacInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//通过session中的访问控制列表进行对比
		//通过request获取到当前的url地址

		String uri = request.getRequestURI();
		logger.info(uri+"Access Allowed!");
		return true;
		
		//在如下位置进行访问控制
		/*
		boolean flag = uri.equals("/oa/setting/init.do"); 
		if(flag){
			logger.info("Access Allowed!");
			return true;
		}
		//return false;
		String referURL = request.getHeader("Referer");
		if(null == referURL){
			//直接访问了该url，因此不产生任何引用地址，直接跳转到首页或者登录页面
			response.sendRedirect("/oa");
		}else{
			response.sendRedirect(referURL);
		}
		return false;
		//*/
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("postHandle");
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		if(ex==null)
			logger.info("afterCompletion");
		else{
			logger.error(ex);
			throw ex;
		}
		
		
	}

}
