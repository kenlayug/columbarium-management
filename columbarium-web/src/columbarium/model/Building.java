package columbarium.model;

import java.util.List;

public class Building {

	private int buildingId;
	private String strBuildingName;
	private String strBuildingLocation;
	private String strBuildingType;
	private List<Floor>floorList;
	
	public Building(){
		
	}
	public int getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(int buildingId) {
		this.buildingId = buildingId;
	}
	public String getStrBuildingName() {
		return strBuildingName;
	}
	public void setStrBuildingName(String strBuildingName) {
		this.strBuildingName = strBuildingName;
	}
	public String getStrBuildingLocation() {
		return strBuildingLocation;
	}
	public void setStrBuildingLocation(String strBuildingLocation) {
		this.strBuildingLocation = strBuildingLocation;
	}
	public String getStrBuildingType() {
		return strBuildingType;
	}
	public void setStrBuildingType(String strBuildingType) {
		this.strBuildingType = strBuildingType;
	}
	public List<Floor> getFloorList() {
		return floorList;
	}
	public void setFloorList(List<Floor> floorList) {
		this.floorList = floorList;
	}
	public void addFloor(Floor floor){
		if (!floorList.contains(floor)){
			this.floorList.add(floor);
		}
	}
	public void removeFloor(Floor floor){
		if (floorList.contains(floor)){
			this.floorList.remove(floor);
		}
	}
	
}
