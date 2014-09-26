package biz.yf.oa.rbac.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class RbacInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//通过session中的访问控制列表进行对比
		//通过request获取到当前的url地址
		System.out.println(handler);
		String uri = request.getRequestURI();
		System.out.println(uri);
		boolean flag = uri.equals("/oa/setting/init.do"); 
		if(flag){
			System.out.println("Access Allowed!");
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
		
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("postHandle");
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println(handler);
		if(ex==null)
			System.out.println("afterCompletion");
		else{
			ex.printStackTrace();
			throw ex;
		}
		
		
	}

}
