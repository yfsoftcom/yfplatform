package biz.yf.oa.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import biz.yf.oa.bo.BizWrapper;
import biz.yf.oa.bo.OAUser;
import biz.yf.oa.dao.UserMapper;

import com.opensymphony.user.EntityNotFoundException;
import com.opensymphony.user.User;
import com.opensymphony.user.UserManager;

/**
 * 登录的服务
 * @author Frank
 *
 */
public class LoginService {

	private static final Log logger = LogFactory.getLog(UserManager.class);
	
	private UserMapper userMapper;


	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}


	/**
	 * 验证用户口令
	 * @param username 用户名
	 * @param password 密码
	 * @param ip IP地址
	 * @return
	 */
	public BizWrapper auth(String username,String password,String ip){
		UserManager um = UserManager.getInstance();
		try {
			User u = um.getUser(username);
			if(u.authenticate(password)){
				updateLoginInfo(username,ip);
				return new BizWrapper().success();
			}
			return new BizWrapper().error(-2, "Password Error!");
		} catch (EntityNotFoundException e) {
			logger.error(e.getMessage());
			return new BizWrapper().error(-1, "Username Not Exists!");
		}
	}
	
	/**
	 * 更新登录信息
	 * @param ip 登录客户端的IP地址
	 */
	public void updateLoginInfo(String username,String ip){
		
		//1.调用userMapper更新登录数据
		logger.info("更新登录信息");
		//
	}

	/*
	public BizWrapper login(OAUser u){
		int resultId = this.userMapper.login(u);
		BizWrapper result = new BizWrapper();
		//登录正常
		if(resultId>0){
			result.success();
			u.setId(resultId);
		}else{
			result.error((byte)resultId, "ERROR!");
		}
		return result;
	}//*/
	
	public BizWrapper findUserById(int id){
		OAUser u = this.userMapper.findUserById(id);
		return new BizWrapper().success().setData(u);
	}
	
	public BizWrapper findUserByName(String name){
		OAUser u = null;//this.userMapper.findUserById(id);
		return new BizWrapper().success().setData(u);
	}
}
