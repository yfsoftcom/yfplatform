package biz.yf.oa.bo;

import org.json.JSONObject;

/**
 * 用于在Service和Controller之间进行数据信息传递的包装类型
 * @author Frank
 *
 */
public class BizWrapper {
	private boolean success = true;

	private byte code = 0;

	private String msg = null;

	private Object data = null;

	public BizWrapper success(String msg){
		this.code = 0;
		this.msg = msg;
		this.success = true;
		return this;
	}
	
	public BizWrapper success(){
		this.code = 0;
		this.success = true;
		return this;
	}
	
	public BizWrapper success(String msg,Object data){
		this.code = 0;
		this.msg = msg;
		this.data = data;
		this.success = true;
		return this;
	}
	
	public BizWrapper error(int code,String msg){
		this.code = (byte)code;
		this.msg = msg;
		this.success = false;
		return this;
	}
	
	public BizWrapper error(int code){
		this.code = (byte)code;
		this.success = false;
		return this;
	}
	
	
	public BizWrapper error(int code,String msg,Object data){
		this.code = (byte)code;
		this.msg = msg;
		this.success = false;
		this.data = data;
		return this;
	}
	
	public boolean isSuccess() {
		return success;
	}

	public byte getCode() {
		return code;
	}

	public String getMsg() {
		return msg;
	}

	@SuppressWarnings("unchecked")
	public <T> T getData() {
		return (T) data;
	}

	public BizWrapper setData(Object data) {
		this.data = data;
		return this;
	}

	@Override
	public String toString() {
		JSONObject jo = new JSONObject(this);
		return jo.toString();
	}
	

}
