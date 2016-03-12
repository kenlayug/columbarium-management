package columbarium.actions.unit;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Unit;

public class GetUnitByIdAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private int unitId;
	private Unit unit;
	
	public void setUnitId(int unitId){
		this.unitId = unitId;
	}
	
	public Unit getUnit(){
		return unit;
	}
	
	public String execute(){
		System.out.println("HERE IN GET UNIT BY ID...");
		unit = Unit.getUnitById(unitId);
		System.out.println("Fetching unit "+unit.getUnitId());
		return "success";
		
	}
	
}
