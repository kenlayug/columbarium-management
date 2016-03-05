package columbarium.actions.building;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Building;

public class UpdateBuildingAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Building building;
	private String strBuildingName;
	private String strStatus;
	
	public void setStrBuildingName(String strBuildingName){
		this.strBuildingName = strBuildingName;
	}
	
	public Building getBuilding() {
		return building;
	}
	public void setBuilding(Building building) {
		this.building = building;
	}
	public String getStatus() {
		return strStatus;
	}
	public void setStrStatus(String strStatus) {
		this.strStatus = strStatus;
	}
	
	public String execute(){
		
		System.out.println("HERE IN UPDATE");
		building.setBuildingId(Building.getBuilding(strBuildingName).getBuildingId());
		strStatus = building.update();
		System.out.println(strStatus);
		return "success";
		
	}
	
}
