package columbarium.model;

import java.text.DecimalFormat;

public class UnitCategory {

	private int unitCategoryId;
	private int floorId;
	private int intLeveNo;
	private double dblPrice;
	
	public UnitCategory(){
		
	}
	public UnitCategory(int floorId, int intLevelNo){
		this.floorId = floorId;
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
	
	public String toString(){
		return getUnitCategoryId()+" -- P"+getPriceRep();
	}
	
}
