package columbarium.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.BlockService;
import columbarium.service.FloorService;

public class Floor {

	
	private int									buildingId;
	private int									floorId;
	private int									intFloorNo;
	private int									currentLevel;
	private List<Block>							blockList;
	private List<FloorType>						floorTypeList;
	private boolean								boolIsUnit = false;
	
	public void setBoolIsUnit(boolean boolIsUnit){
		this.boolIsUnit = boolIsUnit;
	}
	public boolean getBoolIsUnit(){
		return this.boolIsUnit;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + buildingId;
		result = prime * result + ((floorTypeList == null) ? 0 : floorTypeList.hashCode());
		result = prime * result + intFloorNo;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Floor other = (Floor) obj;
		if (buildingId != other.buildingId)
			return false;
		if (floorTypeList == null) {
			if (other.floorTypeList != null)
				return false;
		} else if (!floorTypeList.equals(other.floorTypeList))
			return false;
		if (intFloorNo != other.intFloorNo)
			return false;
		return true;
	}
	public void setFloorTypeList(List<FloorType> floorTypeList){
		this.floorTypeList = floorTypeList;
	}
	public List<FloorType> getFloorTypeList(){
		return this.floorTypeList;
	}
	public int getFloorType(){
		return floorTypeList.size();
	}
	public void addFloorType(String strFloorType){
		FloorType floorType = new FloorType();
		floorType.setStrFloorDesc(strFloorType);
		if (floorTypeList == null){
			floorTypeList = new ArrayList<FloorType>();
		}
		if (!floorTypeList.contains(floorType)){
			floorTypeList.add(floorType);
		}
	}
	public void removeFloorType(String strFloorType){
		FloorType floorType = new FloorType();
		floorType.setStrFloorDesc(strFloorType);
		if (floorTypeList != null){
			if (floorTypeList.contains(floorType)){
				floorTypeList.remove(floorType);
			}
		}
	}
	public void setCurrentLevel(int currentLevel){
		this.currentLevel = currentLevel;
	}
	public int getCurrentLevel(){
		return currentLevel;
	}
	public Floor(){
		
	}
	public Floor(int buildingId, int floorId, int intFloorNo, int intLevelNo, int intColumnNo){
		this.buildingId = buildingId;
		this.floorId = floorId;
		this.intFloorNo = intFloorNo;
	}
	public Floor(int buildingId, int intFloorNo){
		this.buildingId = buildingId;
		this.intFloorNo = intFloorNo;
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
	
	public static Floor getFloorById(int floorId){
		FloorService floorService = (FloorService)ServletActionContext.getServletContext()
				.getAttribute("floorService");
		return floorService.getFloorById(floorId);
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
