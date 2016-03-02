package columbarium.actions.building;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Building;

public class GetBuildingAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Building building;
	private String strBuildingName;
	private String strStatus;
	
	public String getStatus(){
		return this.strStatus;
	}
	public Building getBuilding() {
		return building;
	}
	public String getStrBuildingName() {
		return strBuildingName;
	}
	public void setStrBuildingName(String strBuildingName) {
		this.strBuildingName = strBuildingName;
	}
	
	public String execute(){
		
		building = Building.getBuilding(strBuildingName);
		if (building != null){
			strStatus = "success";
		}else{
			strStatus = "failed-does-not-exist";
		}
		return "success";
		
	}
	
}
