package columbarium.model;

import org.apache.struts2.ServletActionContext;

import columbarium.service.UnitService;

public class Unit {
	
	private int unitId;
	private int blockId;
	private double dblPrice;
	private String strUnitType;
	private int intColumnNo;
	private int intLevelNo;
	private int floorId;
	private int buildingId;
	private int intStatus;
	
	public void setStatus(int intStatus){
		this.intStatus = intStatus;
	}
	public String getStatus(){
		
		switch(intStatus){
		case 1: return "Active";
		case 0: return "Inactive";
		case 2: return "Reserved";
		case 3: return "Owned";
		}
		return null;
		
	}
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
	public void setStrUnitType(String strUnitType) {
		this.strUnitType = strUnitType;
	}
	
	public static Unit getUnitById(int unitId){
		UnitService unitService = (UnitService)ServletActionContext.getServletContext()
				.getAttribute("unitService");
		return unitService.getUnitById(unitId);
	}
	
	public static String deactivate(int unitId){
		UnitService unitService = (UnitService)ServletActionContext.getServletContext()
				.getAttribute("unitService");
		return unitService.deactivateUnit(unitId);
	}
	
	public static String activate(int unitId){
		UnitService unitService = (UnitService)ServletActionContext.getServletContext()
				.getAttribute("unitService");
		return unitService.activateUnit(unitId);
	}

}
