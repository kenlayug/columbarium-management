package columbarium.actions.building;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Building;

public class DeactivateBuildingAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private String strBuildingName;
	private String strStatus;
	private int buildingId;
	
	public void setBuildingId(int buildingId){
		this.buildingId = buildingId;
	}
	
	public String getStatus(){
		return this.strStatus;
	}
	
	public void setStrBuildingName(String strBuildingName){
		this.strBuildingName = strBuildingName;
	}
	
	public String getStrBuildingName(){
		return this.strBuildingName;
	}
	
	public String execute(){
		
		strStatus = Building.deactivateBuilding(Building.getBuildingById(buildingId).getStrBuildingName());
		System.out.println(strStatus);
		return "success";
		
	}
	
}
