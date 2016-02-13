package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.EmployeeService;

public class Position {

	private int positionId;
	private String strPositionDesc;
	public Position(){
		
	}
	public int getPositionId() {
		return positionId;
	}
	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}
	public String getStrPositionDesc() {
		return strPositionDesc;
	}
	public void setStrPositionDesc(String strPositionDesc) {
		this.strPositionDesc = strPositionDesc;
	}
	public String toString(){
		return getStrPositionDesc();
	}
	
	public static List<Position> getAllPosition(){
		EmployeeService employeeService = (EmployeeService)ServletActionContext.getServletContext()
				.getAttribute("employeeService");
		return employeeService.getAllPosition();
	}
	
}
