package biz.yf.oa.propertyset;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.opensymphony.module.propertyset.AbstractPropertySet;
import com.opensymphony.module.propertyset.PropertyException;

public class MyBatisPropertySet extends AbstractPropertySet {

	private static final Log log = LogFactory.getLog(MyBatisPropertySet.class);

    //~ Instance fields ////////////////////////////////////////////////////////

    // config
	
	PropertySetMapper mapper;
	
    String colData;
    String colDate;
    String colFloat;
    String colGlobalKey;
    String colItemKey;
    String colItemType;
    String colNumber;
    String colString;

    // args
    String globalKey;
    String tableName;
    
	@Override
	public boolean exists(String arg0) throws PropertyException {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public Collection getKeys(String arg0, int arg1) throws PropertyException {
		
		return null;
	}
	@Override
	public int getType(String arg0) throws PropertyException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void remove() throws PropertyException {
		
		
	}
	@Override
	public void remove(String arg0) throws PropertyException {
		// TODO Auto-generated method stub
		
	}
	@Override
	protected Object get(int type, String key) throws PropertyException {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("KEY",key);
		map.put("GLOBAL_KEY", globalKey);
		map = mapper.get(map);
		switch(type){
			case STRING:
				return map.get("STRING_VALUE");
			case BOOLEAN:
				
		}
		return map.get("STRING_VALUE");
	}
	
	@Override
	protected void setImpl(int arg0, String arg1, Object arg2)
			throws PropertyException {
		// TODO Auto-generated method stub
		
	}

	
	public void init(Map config, Map args) {
        // args
        globalKey = (String) args.get("globalKey");

        // config
        try {
        	mapper = (PropertySetMapper)args.get("mapper");
        } catch (Exception e) {
            log.fatal("Could not get Mapper", e);
        }

        tableName = (String) config.get("table.name");
        colGlobalKey = (String) config.get("col.globalKey");
        colItemKey = (String) config.get("col.itemKey");
        colItemType = (String) config.get("col.itemType");
        colString = (String) config.get("col.string");
        colDate = (String) config.get("col.date");
        colData = (String) config.get("col.data");
        colFloat = (String) config.get("col.float");
        colNumber = (String) config.get("col.number");
    }
    
    
}
