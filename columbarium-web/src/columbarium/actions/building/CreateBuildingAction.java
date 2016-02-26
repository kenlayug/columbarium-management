package columbarium.actions.building;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Building;

public class CreateBuildingAction extends ActionSupport implements Action{

	private Building building;
	private String strStatus;
	public Building getBuilding() {
		return building;
	}
	public void setBuilding(Building building) {
		this.building = building;
	}
	public String getStatus() {
		return strStatus;
	}
	
	public String execute(){
		
		strStatus = getBuilding().create();
		return "success";
	}
	
}
