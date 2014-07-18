package biz.yf.oa.test;

import junit.framework.TestCase;
import biz.yf.oa.bo.Bo;
import biz.yf.oa.bo.ObjectId;

public class BoTestCase extends TestCase {

	Bo bo;
	@Override
	protected void setUp() throws Exception {
		super.setUp();
		bo = new Bo();
		System.out.println("setup");
	}

	@Override
	protected void tearDown() throws Exception {
		super.tearDown();
		System.out.println("shutdown");
	}

	
	public void testToString(){
		String s = bo.toString();
		
		System.out.println(s);
		
		bo.setId(new ObjectId(3L));
		
		System.out.println(bo.toString());
	}
}
