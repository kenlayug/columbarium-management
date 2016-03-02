package columbarium.model;

public class UnitCategory {

	private int unitCategoryId;
	private int floorId;
	private int intLeveNo;
	
	public UnitCategory(){
		
	}
	public UnitCategory(int floorId, int intLevelNo){
		this.floorId = floorId;
		this.intLeveNo = intLevelNo;
	}
	public int getUnitCategoryId(){
		return unitCategoryId;
	}
	public void setUnitCategoryId(int unitCategoryId){
		this.unitCategoryId = unitCategoryId;
	}
	public int getFloorId() {
		return floorId;
	}
	public void setFloorId(int floorId) {
		this.floorId = floorId;
	}
	public int getIntLevelNo() {
		return intLeveNo;
	}
	public void setIntLevelNo(int intLeveNo) {
		this.intLeveNo = intLeveNo;
	}
	
}
