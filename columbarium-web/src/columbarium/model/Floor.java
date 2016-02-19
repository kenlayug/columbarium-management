package columbarium.model;

public class Floor {

	private int buildingId;
	private int floorId;
	private int intFloorNo;
	private int intLevelNo;
	private int intColumnNo;
	
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
	
	
}
