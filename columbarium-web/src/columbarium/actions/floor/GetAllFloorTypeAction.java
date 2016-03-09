package columbarium.actions.floor;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.FloorType;

public class GetAllFloorTypeAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<FloorType> floorTypeList;
	
	public List<FloorType>getFloorTypeList(){
		return floorTypeList;
	}
	
	public String execute(){
		
		floorTypeList = FloorType.getAllFloorType();
		return "success";
		
	}
	
}
