package columbarium.actions.floor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Floor;
import columbarium.model.UnitCategory;

public class ConfigureUnitPriceAction extends ActionSupport implements Action{

	private static final long							serialVersionUID = 1L;
	private Floor										floor;
	private double[]									priceList;
	private String										strStatus;
	
	public String getStatus(){
		return strStatus;
	}

	public Floor getFloor() {
		return floor;
	}

	public void setFloor(Floor floor) {
		this.floor = floor;
	}

	public double[] getPriceList() {
		return priceList;
	}

	public void setPriceList(double[] priceList) {
		this.priceList = priceList;
	}

	public String execute(){
		
		int intCtr = 0;
		for (UnitCategory unitCategory : floor.getUnitCategoryList()) {
			unitCategory.setDblPrice(priceList[intCtr]);
			intCtr++;
		}
		strStatus = floor.configureUnitPrice();
		return "success";
		
	}
	
}
