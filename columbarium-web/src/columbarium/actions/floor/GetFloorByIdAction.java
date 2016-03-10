package columbarium.actions.floor;


import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Floor;
import columbarium.model.FloorType;

public class GetFloorByIdAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private int floorId;
	private Floor floor;
	
	public void setFloorId(int floorId){
		this.floorId = floorId;
	}
	
	public Floor getFloor(){
		return this.floor;
	}
	
	public String execute(){
		
		floor = Floor.getFloorById(floorId);
		return "success";
		
	}
	
}
