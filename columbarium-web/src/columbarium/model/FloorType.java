package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.FloorService;

public class FloorType {

	private int floorTypeId;
	private String strFloorDesc;
	private boolean boolIsUnit = false;
	
	public int getFloorTypeId() {
		return floorTypeId;
	}
	public void setFloorTypeId(int floorTypeId) {
		this.floorTypeId = floorTypeId;
	}
	public String getStrFloorDesc() {
		return strFloorDesc;
	}
	public void setStrFloorDesc(String strFloorDesc) {
		this.strFloorDesc = strFloorDesc;
	}
	public boolean getBoolIsUnit() {
		return boolIsUnit;
	}
	public void setBoolIsUnit(boolean boolUnit) {
		this.boolIsUnit = boolUnit;
	}
	
	public String create(){
		FloorService floorService = (FloorService)ServletActionContext.getServletContext()
				.getAttribute("floorService");
		return floorService.createFloorType(this);
	}
	
	public static List<FloorType> getAllFloorType(){
		FloorService floorService = (FloorService)ServletActionContext.getServletContext()
				.getAttribute("floorService");
		return floorService.getAllFloorType();
	}
	
}
