package columbarium.model;

import org.apache.struts2.ServletActionContext;

import columbarium.service.BuildingService;

public class Floor {

	
	private int buildingId;
	private int floorId;
	private int intFloorNo;
	private int intLevelNo;
	private int intColumnNo;
	private int currentLevel;
	
	public void setCurrentLevel(int currentLevel){
		this.currentLevel = currentLevel;
	}
	public int getCurrentLevel(){
		return currentLevel;
	}
	
	public int getIntLevelNo() {
		return intLevelNo;
	}
	public void setIntLevelNo(int intLevelNo) {
		this.intLevelNo = intLevelNo;
	}
	public int getIntColumnNo() {
		return intColumnNo;
	}
	public void setIntColumnNo(int intColumnNo) {
		this.intColumnNo = intColumnNo;
	}
	public Floor(){
		
	}
	public Floor(int buildingId, int floorId, int intFloorNo, int intLevelNo, int intColumnNo){
		this.buildingId = buildingId;
		this.floorId = floorId;
		this.intFloorNo = intFloorNo;
		this.intLevelNo = intLevelNo;
		this.intColumnNo = intColumnNo;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + buildingId;
		result = prime * result + intColumnNo;
		result = prime * result + intFloorNo;
		result = prime * result + intLevelNo;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Floor)) {
			return false;
		}
		Floor other = (Floor) obj;
		if (buildingId != other.buildingId) {
			return false;
		}
		if (intColumnNo != other.intColumnNo) {
			return false;
		}
		if (intFloorNo != other.intFloorNo) {
			return false;
		}
		if (intLevelNo != other.intLevelNo) {
			return false;
		}
		return true;
	}
	public int getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(int buildingId) {
		this.buildingId = buildingId;
	}
	public int getFloorId() {
		return floorId;
	}
	public void setFloorId(int floorId) {
		this.floorId = floorId;
	}
	public int getIntFloorNo() {
		return intFloorNo;
	}
	public void setIntFloorNo(int intFloorNo) {
		this.intFloorNo = intFloorNo;
	}
	
	public String create(){
		
		BuildingService buildingService = (BuildingService)ServletActionContext.getServletContext()
				.getAttribute("buildingService");
		return buildingService.createFloor(this);
		
	}
	
}
