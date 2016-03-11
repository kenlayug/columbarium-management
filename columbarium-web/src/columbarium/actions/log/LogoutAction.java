package columbarium.actions.log;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements Action, SessionAware{

	private Map<String, Object> sessionMap;
	
	@Override
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}
	
	public String execute(){
		sessionMap.clear();
		return "success";
	}

}
