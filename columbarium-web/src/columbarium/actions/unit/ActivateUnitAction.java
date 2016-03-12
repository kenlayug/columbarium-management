package columbarium.actions.unit;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Unit;

public class ActivateUnitAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private int unitId;
	private String strStatus;
	
	public void setUnitId(int unitId){
		this.unitId = unitId;
	}
	
	public String getStatus(){
		return this.strStatus;
	}
	
	public String execute(){
		
		System.out.println("ACTIVATING UNIT "+unitId);
		strStatus = Unit.activate(unitId);
		return "success";
		
	}
	
}
