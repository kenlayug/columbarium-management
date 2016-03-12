package columbarium.actions.log;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements Action, SessionAware{

	private String username;
	private String password;
	private Map<String, Object> sessionMap;
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public String execute(){
		
		if (username.equals("admin")){
			if (password.equals("admin")){
				sessionMap.put("username", username);
				sessionMap.put("userType", "admin");
				return "success";
			}
			return "failed-incorrect-password";
		}
		return "failed-not-found";
		
	}

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		// TODO Auto-generated method stub
		this.sessionMap = sessionMap;
	}
	
}
