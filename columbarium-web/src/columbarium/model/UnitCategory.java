package columbarium.model;

import java.text.DecimalFormat;

public class UnitCategory {

	private int unitCategoryId;
	private int blockId;
	private int intLeveNo;
	private double dblPrice;
	
	public UnitCategory(){
		
	}
	public UnitCategory(int blockId, int intLevelNo){
		this.blockId = blockId;
		this.intLeveNo = intLevelNo;
	}
	public double getDblPrice() {
		return dblPrice;
	}
	public String getPriceRep(){
		return new DecimalFormat("0.00").format(dblPrice);
	}
	public void setDblPrice(double dblPrice) {
		this.dblPrice = dblPrice;
	}
	public int getUnitCategoryId(){
		return unitCategoryId;
	}
	public void setUnitCategoryId(int unitCategoryId){
		this.unitCategoryId = unitCategoryId;
	}
	public int getBlockId() {
		return blockId;
	}
	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}
	public int getIntLevelNo() {
		return intLeveNo;
	}
	public void setIntLevelNo(int intLeveNo) {
		this.intLeveNo = intLeveNo;
	}
	
	public String toString(){
		return getUnitCategoryId()+" -- P"+getPriceRep();
	}
	
}
