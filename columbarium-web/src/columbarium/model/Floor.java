package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.BlockService;
import columbarium.service.FloorService;

public class Floor {

	
	private int									buildingId;
	private int									floorId;
	private int									intFloorNo;
	private int									intLevelNo;
	private int									intColumnNo;
	private int									currentLevel;
	private List<UnitCategory>					unitCategoryList;
	private List<Block>							blockList;
	private FloorType							floorType;
	
	public void setFloorType(FloorType floorType){
		this.floorType = floorType;
	}
	public FloorType getFloorType(){
		return this.floorType;
	}
	public void setCurrentLevel(int currentLevel){
		this.currentLevel = currentLevel;
	}
	public List<UnitCategory> getUnitCategoryList() {
		return unitCategoryList;
	}
	public void setUnitCategoryList(List<UnitCategory> unitCategoryList) {
		this.unitCategoryList = unitCategoryList;
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
	public Floor(int buildingId, int intFloorNo){
		this.buildingId = buildingId;
		this.intFloorNo = intFloorNo;
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
	
	public List<Block> getBlockList() {
		return blockList;
	}
	public void setBlockList(List<Block> blockList) {
		this.blockList = blockList;
	}
	public String configure(){
		FloorService floorService = (FloorService)ServletActionContext.getServletContext()
				.getAttribute("floorService");
		return floorService.configureFloor(this);
	}
	
	public void getAllUnitCategory(){
		FloorService floorService = (FloorService)ServletActionContext.getServletContext()
				.getAttribute("floorService");
		setUnitCategoryList(floorService.getAllUnitCategoryFromFloor(this));
	}
	
	public void getAllBlocks(){
		BlockService blockService = (BlockService)ServletActionContext.getServletContext()
				.getAttribute("blockService");
		setBlockList(blockService.getAllBlockFromFloor(this));
	}
	
	public String configureUnitPrice(){
		FloorService floorService = (FloorService)ServletActionContext.getServletContext()
				.getAttribute("floorService");
		return floorService.configureUnitPrice(this);
	}
	
}
