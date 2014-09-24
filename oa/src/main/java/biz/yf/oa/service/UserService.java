package biz.yf.oa.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataAccessException;

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

	private static final Log logger = LogFactory.getLog(UserService.class);
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
		OAUser u = this.userMapper.findUserByName(name);
		if(u != null){
			return new BizWrapper().success().setData(u);
		}
		return new BizWrapper().error(-1,"Login Name Not Exists!");
	}
	
	/**
	 * 新建一个用户
	 * @param user 需要 loginname,password,email 3个属性值
	 * @return
	 */
	public BizWrapper createUser(OAUser user){
		UserManager um = UserManager.getInstance();
		User u = null;
		try {
			u = um.createUser(user.getLoginName());
			u.setPassword(user.getLoginPass());
		} catch (DuplicateEntityException e) {
			return new BizWrapper().error(-1,e.getMessage());
		} catch (ImmutableException e) {
			return new BizWrapper().error(-2,e.getMessage());
		}
		int rows = 0;
		try{
			rows = userMapper.createUser(user);
		}catch(DataAccessException hex){
			//osuser中删除之前新建的用户
			try {
				u.remove();
			} catch (ImmutableException e) {
				logger.fatal(e.getMessage());
			}
			return new BizWrapper().error(-4,hex.getMessage());
		}
		
		if(rows>0){
			return new BizWrapper().success().setData(user.getId());
		}
		return new BizWrapper().error(-3,"System Error!");
	}
	
	
	
}
