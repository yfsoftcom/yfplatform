package biz.yf.oa.dao;

import biz.yf.oa.bo.OAUser;

/**
 * 关于用户操作的配置项
 * @author Frank
 *
 */
public interface UserMapper extends CommonMapper {

	/**
	 * 通过用户进行登录
	 * @param user 用户登录信息
	 * @return >0则登录正常；值为用户的id值；<=0则为异常信息
	 */
	public int login(OAUser user);
	
	/**
	 * 通过用户的id加载用户的其他信息
	 * @param id 用户的id
	 * @return 用户的对象
	 */
	public OAUser findUserById(int id);
	
	/**
	 * 通过用户插入数据，并返回ID
	 * @param u
	 * @return
	 */
	public int createUser(OAUser u);
	
}
