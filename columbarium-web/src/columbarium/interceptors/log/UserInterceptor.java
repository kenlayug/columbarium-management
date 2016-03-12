package columbarium.interceptors.log;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class UserInterceptor extends AbstractInterceptor{

	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		Map<String, Object> session = actionInvocation.getInvocationContext().getSession();
		
		String strUsername = (String) session.get("username");
		if (strUsername == null){
			return actionInvocation.invoke();
		}
		
		return "exist";
	}
	
}
