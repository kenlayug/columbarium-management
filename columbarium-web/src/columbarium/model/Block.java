package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.BlockService;

public class Block {

	private int floorId;
	private int blockId;
	private String strBlockName;
	private int intColumnNo;
	private int intLevelNo;
	private String strUnitType;
	private List<Unit>unitList;
	
	public Block(){
		
	}
	public Block(int floorId, int blockId, String strBlockName){
		this.floorId = floorId;
		this.blockId = blockId;
		this.strBlockName = strBlockName;
	}
	public void setStrUnitType(String strUnitType){
		this.strUnitType = strUnitType;
	}
	public String getStrUnitType(){
		return this.strUnitType;
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
	
	public String create(){
		BlockService blockService = (BlockService)ServletActionContext.getServletContext()
				.getAttribute("blockService");
		return blockService.createBlock(this);
		
	}
	
	public static Block getBlock(String strBlockName){
		BlockService blockService = (BlockService)ServletActionContext.getServletContext()
				.getAttribute("blockService");
		return blockService.getBlock(strBlockName);
	}
	
}
