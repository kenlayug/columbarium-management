package columbarium.actions.floor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Floor;

public class ConfigureFloorAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Floor floor;
	private String strStatus;
	private String[]floorTypeList;
	
	public String getStatus(){
		return this.strStatus;
	}

	public Floor getFloor() {
		return floor;
	}

	public void setFloor(Floor floor) {
		this.floor = floor;
	}
	
	public void setFloorTypeList(String[]floorTypeList){
		this.floorTypeList = floorTypeList;
	}
	
	public String execute(){
		
		for (String floorType : floorTypeList) {
			floor.addFloorType(floorType);
			System.out.println(floorType);
		}
		strStatus = getFloor().configure();
		System.out.println(strStatus);
		return "success";
		
	}
	
}
