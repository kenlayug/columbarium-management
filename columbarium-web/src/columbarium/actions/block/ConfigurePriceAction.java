package columbarium.actions.block;

import java.util.ArrayList;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Block;
import columbarium.model.UnitCategory;

public class ConfigurePriceAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Block block;
	private Double[]levelPrice;
	private String strStatus;
	
	public String getStatus(){
		return strStatus;
	}
	public Block getBlock() {
		return block;
	}
	public void setBlock(Block block) {
		this.block = block;
	}
	public void setLevelPrice(Double[]levelPrice) {
		this.levelPrice = levelPrice;
	}
	
	public String execute(){
		
		int intCtr = 0;
		block.getAllUnitCategory();
		System.out.println(levelPrice.length);
		try{
			for (UnitCategory unitCategory : block.getUnitCategoryList()) {
				unitCategory.setDblPrice(levelPrice[intCtr]);
				intCtr++;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		strStatus = block.configureUnitPrice();
		System.out.println(strStatus);
		return "success";
		
	}
	
}
