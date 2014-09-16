package biz.yf.oa.service;

import biz.yf.oa.bo.BizWrapper;
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



	public BizWrapper login(User u){
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
	}
	
	public BizWrapper findUserById(int id){
		User u = this.userMapper.findUserById(id);
		return new BizWrapper().success().setData(u);
	}
}
