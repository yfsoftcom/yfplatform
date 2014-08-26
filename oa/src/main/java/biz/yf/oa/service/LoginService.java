package biz.yf.oa.service;

import biz.yf.oa.bo.AccessResult;
import biz.yf.oa.bo.User;
import biz.yf.oa.dao.UserMapper;

/**
 * 登录的服务
 * @author Frank
 *
 */
public class LoginService {

	
	private UserMapper userMapper;


	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}



	public AccessResult login(User u){
		int resultId = this.userMapper.login(u);
		AccessResult ar = new AccessResult();
		//登录正常
		if(resultId>0){
			u.setId(resultId);
		}else{
			ar.setSuccess(false);
			ar.setCode((byte)resultId);
			ar.setMsg("ERROR!");
		}
		return ar;
	}
}
