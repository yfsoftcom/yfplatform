package biz.yf.oa.bo;

import java.io.Serializable;

/**
 * 业务对象的序列ID
 * @author Frank
 *
 */
public class ObjectId implements Serializable {

	private static final long serialVersionUID = -5686572609299003838L;
	
	private long _id;
	
	public ObjectId(long id){
		_id = id;
	}
	
	public void setValue(long id){
		_id = id;
	}
	
	
	public long getValue(){
		return _id;
	}

	@Override
	public String toString() {
		return String.valueOf(_id);
	}
	
	

	
}
