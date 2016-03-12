package columbarium.actions.unit;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Unit;

public class DeactivateUnitAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private int unitId;
	private String strStatus;
	
	public String getStatus(){
		return strStatus;
	}
	
	public void setUnitId(int unitId){
		this.unitId = unitId;
	}
	
	public String execute(){
		
		strStatus = Unit.deactivate(unitId);
		System.out.println(unitId);
		return "success";
		
	}
	
}
