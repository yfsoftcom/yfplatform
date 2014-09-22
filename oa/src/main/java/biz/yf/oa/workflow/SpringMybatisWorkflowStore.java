package biz.yf.oa.workflow;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.module.propertyset.PropertySet;
import com.opensymphony.workflow.StoreException;
import com.opensymphony.workflow.query.WorkflowExpressionQuery;
import com.opensymphony.workflow.query.WorkflowQuery;
import com.opensymphony.workflow.spi.Step;
import com.opensymphony.workflow.spi.WorkflowEntry;
import com.opensymphony.workflow.spi.WorkflowStore;

/**
 * 需要通过扩展osworkflow
 * @author Frank
 *
 */
public class SpringMybatisWorkflowStore implements WorkflowStore{
	
	/**
	 * 通过mybatis操作工作流数据表的接口
	 */
	private MybatisWorkflowStoreMapper workflowStoreMapper;
	
	public void setWorkflowStoreMapper(
			MybatisWorkflowStoreMapper workflowStoreMapper) {
		this.workflowStoreMapper = workflowStoreMapper;
	}

	@Override
	public Step createCurrentStep(long arg0, int arg1, String arg2, Date arg3,
			Date arg4, String arg5, long[] arg6) throws StoreException {
		return null;
	}

	@Override
	public WorkflowEntry createEntry(String arg0) throws StoreException {
		return null;
	}

	@Override
	public List findCurrentSteps(long arg0) throws StoreException {
		return null;
	}

	@Override
	public WorkflowEntry findEntry(long arg0) throws StoreException {
		return null;
	}

	@Override
	public List findHistorySteps(long arg0) throws StoreException {
		return null;
	}

	@Override
	public PropertySet getPropertySet(long arg0) throws StoreException {
		return null;
	}

	@Override
	public void init(Map arg0) throws StoreException {
		
	}

	@Override
	public Step markFinished(Step arg0, int arg1, Date arg2, String arg3,
			String arg4) throws StoreException {
		return null;
	}

	@Override
	public void moveToHistory(Step arg0) throws StoreException {
		
	}

	@Override
	public List query(WorkflowExpressionQuery arg0) throws StoreException {
		return null;
	}

	@Override
	public List query(WorkflowQuery arg0) throws StoreException {
		return null;
	}

	@Override
	public void setEntryState(long arg0, int arg1) throws StoreException {
		
	}

	
}
