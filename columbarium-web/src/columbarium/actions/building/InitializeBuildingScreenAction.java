package columbarium.actions.building;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Building;

public class InitializeBuildingScreenAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<Building>buildingList;
	
	public List<Building>getBuildingList(){
		return this.buildingList;
	}
	
	public String execute(){
		buildingList = Building.getAllBuilding();
		return "success";
	}
	
}
