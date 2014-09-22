package biz.yf.oa.test;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.opensymphony.module.propertyset.PropertySet;
import com.opensymphony.module.propertyset.PropertySetManager;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations={"classpath:beans.xml"})  
public class TestMapper  
{  
	
	 @Resource(name="propertySetMapper")  
	 private Object propertySetMapper; 
	
	PropertySet ps = null;
    @Before  
    public void setUp() throws Exception  
    {  
    	Map args = new HashMap();
    	args.put("globalKey", "osff_25");
    	args.put("mapper", propertySetMapper);
    	ps = PropertySetManager.getInstance("mybatis", args);
    }  
  
    @Test  
    public void testGet()  
    {  
        try  
        {  
        	String value = ps.getString("caller");
        	System.out.println(value);
        }  
        catch (Exception e)  
        {  
            //fail("Test failed!");  
        }  
    }  
  
}  