package biz.yf.oa.service;

import biz.yf.oa.bo.BizWrapper;
import biz.yf.oa.bo.OAUser;
import biz.yf.oa.dao.UserMapper;

import com.opensymphony.user.DuplicateEntityException;
import com.opensymphony.user.ImmutableException;
import com.opensymphony.user.User;
import com.opensymphony.user.UserManager;

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
		OAUser u = this.userMapper.findUserById(id);
		return new BizWrapper().success().setData(u);
	}
	
	public BizWrapper findUserByName(String name){
		OAUser u = null;//this.userMapper.findUserById(id);
		return new BizWrapper().success().setData(u);
	}
	
	public BizWrapper createUser(OAUser user){
		//
		UserManager um = UserManager.getInstance();
		try {
			User u = um.createUser(user.getLoginName());
			u.setPassword(user.getLoginPass());
		} catch (DuplicateEntityException e) {
			return new BizWrapper().error(-1,e.getMessage());
		} catch (ImmutableException e) {
			return new BizWrapper().error(-2,e.getMessage());
		}
		
		return new BizWrapper().success();
	}
	
}
