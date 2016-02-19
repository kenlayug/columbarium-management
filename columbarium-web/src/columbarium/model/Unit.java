package columbarium.model;

public class Unit {
	
	private int unitId;
	private int blockId;
	private double dblPrice;
	private String strUnitType;
	private int intColumnNo;
	private int intLevelNo;
	private int floorId;
	private int buildingId;
	public int getFloorId() {
		return floorId;
	}
	public void setFloorId(int floorId) {
		this.floorId = floorId;
	}
	public int getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(int buildingId) {
		this.buildingId = buildingId;
	}
	public int getUnitId() {
		return unitId;
	}
	public int getIntColumnNo() {
		return intColumnNo;
	}
	public void setIntColumnNo(int intColumnNo) {
		this.intColumnNo = intColumnNo;
	}
	public int getIntLevelNo() {
		return intLevelNo;
	}
	public void setIntLevelNo(int intLevelNo) {
		this.intLevelNo = intLevelNo;
	}
	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}
	public int getBlockId() {
		return blockId;
	}
	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}
	public double getDblPrice() {
		return dblPrice;
	}
	public void setDblPrice(double dblPrice) {
		this.dblPrice = dblPrice;
	}
	public String getStrUnitType() {
		return strUnitType;
	}
	public void setStrUnitType(int intUnitType) {
		if (intUnitType == 1){
			this.strUnitType = "Columbarium Vaults";
		}else{
			this.strUnitType = "Full Body Crypts";
		}
	}

}