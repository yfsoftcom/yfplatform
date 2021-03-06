package biz.yf.oa.bo;

import java.io.Serializable;

import org.json.JSONObject;

/**
 * 系统的Bussise Object 基类
 * 实现了序列化接口
 * @author Frank
 *
 */
public class Bo implements Serializable {

	private static final long serialVersionUID = 1L;

	private int _id = 0;
	
	
	
	public int getId() {
		return _id;
	}

	public void setId(int id) {
		this._id = id;
	}


	@Override
	public String toString() {
		return new JSONObject(this).toString();
	}
	
}
