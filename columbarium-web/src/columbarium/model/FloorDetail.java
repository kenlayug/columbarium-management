package columbarium.model;

public class FloorDetail {

	private int floorId;
	private String strFloorType;
	
	public FloorDetail(){
		
	}
	
	public FloorDetail(int floorId, String strFloorType){
		this.floorId = floorId;
		this.strFloorType = strFloorType;
	}
	
	public void setFloorId(int floorId){
		this.floorId = floorId;
	}
	
	public void setStrFloorType(String strFloorType){
		this.strFloorType = strFloorType;
	}
	
	public int getFloorId(){
		return this.floorId;
	}
	
	public String getStrFloorType(){
		return this.strFloorType;
	}
	
}
