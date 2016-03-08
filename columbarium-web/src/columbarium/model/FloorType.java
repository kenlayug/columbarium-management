package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.FloorService;

public class FloorType {

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((strFloorDesc == null) ? 0 : strFloorDesc.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FloorType other = (FloorType) obj;
		if (strFloorDesc == null) {
			if (other.strFloorDesc != null)
				return false;
		} else if (!strFloorDesc.equals(other.strFloorDesc))
			return false;
		return true;
	}

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
