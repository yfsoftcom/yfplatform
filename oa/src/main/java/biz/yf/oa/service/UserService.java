package biz.yf.oa.service;

import biz.yf.oa.bo.BizWrapper;
import biz.yf.oa.bo.User;
import biz.yf.oa.dao.UserMapper;

/**
 * 用户服务
 * @author Frank
 *
 */
public class UserService {

	/**
	 * 用户DAO的映射接口
	 */
	private UserMapper userMapper;


	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	/**
	 * 通过用户加载用户信息
	 * @param id 用户ID
	 * @return User对象
	 */
	public BizWrapper findUserById(int id){
		User u = this.userMapper.findUserById(id);
		return new BizWrapper().success().setData(u);
	}
}
