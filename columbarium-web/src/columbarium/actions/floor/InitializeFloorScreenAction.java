package columbarium.actions.floor;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Building;
import columbarium.model.FloorType;

public class InitializeFloorScreenAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<Building>buildingList;
	private List<FloorType>floorTypeList;
	
	public List<FloorType>getFloorTypeList(){
		return this.floorTypeList;
	}
	
	public List<Building>getBuildingList(){
		return buildingList;
	}
	
	public String execute(){
		
		buildingList = Building.getAllBuilding();
		floorTypeList = FloorType.getAllFloorType();
		return "success";
		
	}
	
}
