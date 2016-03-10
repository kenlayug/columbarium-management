package columbarium.actions.block;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Building;
import columbarium.model.Floor;
import columbarium.model.FloorType;

public class InitializeBlockScreenAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<Building> buildingList;
	
	public List<Building> getBuildingList(){
		return this.buildingList;
	}
	
	public String execute(){
		
		buildingList = Building.getAllBuilding();
		for (Building building : buildingList) {
			for (Floor floor : building.getFloorList()) {
				floor.getAllBlocks();
				for (FloorType floorType : floor.getFloorTypeList()) {
					if (floorType.getBoolIsUnit()){
						floor.setBoolIsUnit(true);
					}
				}
			}
		}
		return "success";
		
	}
	
}
