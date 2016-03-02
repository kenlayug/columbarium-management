package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.BuildingService;

public class Building {

	private int buildingId;
	private String strBuildingName;
	private String strBuildingLocation;
	private int intNoOfFloors;
	private List<Floor>floorList;
	
	public Building(){
		
	}
	public Building(String strBuildingName){
		this.strBuildingName = strBuildingName;
	}
	public int getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(int buildingId) {
		this.buildingId = buildingId;
	}
	public void setIntNoOfFloors(int intNoOfFloors){
		this.intNoOfFloors = intNoOfFloors;
	}
	public int getIntNoOfFloors(){
		return this.intNoOfFloors;
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
		return true;
	}
	
	public String create(){
		
		BuildingService buildingService = (BuildingService)ServletActionContext.getServletContext()
				.getAttribute("buildingService");
		return buildingService.createBuilding(this);
		
	}
	
	public static Building getBuilding(String strBuildingName){
		BuildingService buildingService = (BuildingService)ServletActionContext.getServletContext()
				.getAttribute("buildingService");
		return buildingService.getBuilding(strBuildingName);
	}
	
	public String update(){
		BuildingService buildingService = (BuildingService)ServletActionContext.getServletContext()
				.getAttribute("buildingService");
		return buildingService.updateBuilding(this);
	}
	
	public static String deactivateBuilding(String strBuildingName){
		BuildingService buildingService = (BuildingService)ServletActionContext.getServletContext()
				.getAttribute("buildingService");
		return buildingService.deactivateBuilding(strBuildingName);
	}
	
	public static List<Building>getAllBuilding(){
		BuildingService buildingService = (BuildingService)ServletActionContext.getServletContext()
				.getAttribute("buildingService");
		return buildingService.getAllBuilding();
	}
	
}
