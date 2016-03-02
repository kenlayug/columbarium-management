package columbarium.actions.floor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.FloorType;

public class CreateFloorTypeAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private FloorType floorType;
	private String strStatus;

	public String getStatus(){
		return strStatus;
	}
	public FloorType getFloorType() {
		return floorType;
	}

	public void setFloorType(FloorType floorType) {
		this.floorType = floorType;
	}
	
	public String execute(){
		
		strStatus = getFloorType().create();
		return "success";
		
	}
	
}
