package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.BuildingService;

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
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((strBuildingLocation == null) ? 0 : strBuildingLocation.hashCode());
		result = prime * result + ((strBuildingName == null) ? 0 : strBuildingName.hashCode());
		result = prime * result + ((strBuildingType == null) ? 0 : strBuildingType.hashCode());
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
		if (!(obj instanceof Building)) {
			return false;
		}
		Building other = (Building) obj;
		if (strBuildingLocation == null) {
			if (other.strBuildingLocation != null) {
				return false;
			}
		} else if (!strBuildingLocation.equals(other.strBuildingLocation)) {
			return false;
		}
		if (strBuildingName == null) {
			if (other.strBuildingName != null) {
				return false;
			}
		} else if (!strBuildingName.equals(other.strBuildingName)) {
			return false;
		}
		if (strBuildingType == null) {
			if (other.strBuildingType != null) {
				return false;
			}
		} else if (!strBuildingType.equals(other.strBuildingType)) {
			return false;
		}
		return true;
	}
	
	public String create(){
		
		BuildingService buildingService = (BuildingService)ServletActionContext.getServletContext()
				.getAttribute("buildingService");
		return buildingService.createBuilding(this);
		
	}
	
	public static List<Building>getAllBuilding(){
		BuildingService buildingService = (BuildingService)ServletActionContext.getServletContext()
				.getAttribute("buildingService");
		return buildingService.getAllBuilding();
	}
	
}
