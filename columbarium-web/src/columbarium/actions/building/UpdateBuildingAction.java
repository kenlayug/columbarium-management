package columbarium.actions.building;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Building;

public class UpdateBuildingAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Building building;
	private String strStatus;
	
	public Building getBuilding() {
		return building;
	}
	public void setBuilding(Building building) {
		this.building = building;
	}
	public String getStrStatus() {
		return strStatus;
	}
	public void setStrStatus(String strStatus) {
		this.strStatus = strStatus;
	}
	
	public String execute(){
		
		strStatus = building.update();
		return "success";
		
	}
	
}
