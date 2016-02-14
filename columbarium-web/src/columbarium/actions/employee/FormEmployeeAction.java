package columbarium.actions.employee;

import java.util.List;

import com.opensymphony.xwork2.Action;

import columbarium.model.Employee;
import columbarium.model.Position;

public class FormEmployeeAction implements Action{

	private List<Position> positionList;
	private int employeeId;
	
	public void setEmployeeId(int employeeId){
		this.employeeId = employeeId;
	}
	
	public int getEmployeeId(){
		return this.employeeId;
	}
	
	public void setPositionList(List<Position>positionList){
		this.positionList = positionList;
	}
	
	public List<Position> getPositionList(){
		return this.positionList;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		setPositionList(Position.getAllPosition());
		setEmployeeId(Employee.getNewEmployeeCode());
		return "success";
	}

}
