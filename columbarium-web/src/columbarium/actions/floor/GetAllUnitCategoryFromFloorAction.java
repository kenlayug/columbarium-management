package columbarium.actions.floor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Floor;

public class GetAllUnitCategoryFromFloorAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Floor floor;
	public Floor getFloor() {
		return floor;
	}
	public void setFloor(Floor floor) {
		this.floor = floor;
	}
	
	public String execute(){
		
		floor.getAllUnitCategory();
		return "success";
		
	}
	
}
