package columbarium.model;

import java.util.List;

public class Block {

	private int floorId;
	private int blockId;
	private String strBlockName;
	private List<Unit>unitList;
	
	public Block(){
		
	}
	public Block(int floorId, int blockId, String strBlockName){
		this.floorId = floorId;
		this.blockId = blockId;
		this.strBlockName = strBlockName;
	}
	public int getFloorId() {
		return floorId;
	}
	public List<Unit> getUnitList() {
		return unitList;
	}
	public void setUnitList(List<Unit> unitList) {
		this.unitList = unitList;
	}
	public void setFloorId(int floorId) {
		this.floorId = floorId;
	}
	public int getBlockId() {
		return blockId;
	}
	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}
	public String getStrBlockName() {
		return strBlockName;
	}
	public void setStrBlockName(String strBlockName) {
		this.strBlockName = strBlockName;
	}
	
}
