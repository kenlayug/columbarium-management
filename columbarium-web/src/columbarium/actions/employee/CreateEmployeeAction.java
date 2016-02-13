package columbarium.actions.employee;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Employee;

public class CreateEmployeeAction extends ActionSupport implements Action{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4024072565786974246L;
	private Employee employee;
	private String strRetypePassword;
	
	public void setEmployee(Employee employee){
		this.employee = employee;
	}
	
	public Employee getEmployee(){
		return this.employee;
	}
	
	public void setStrRetypePassword(String strPssword){
		this.strRetypePassword = strPssword;
	}
	
	public String getStrRetypePassword(){
		return this.strRetypePassword;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return getEmployee().save();
	}
	
	public void validate(){
		
		if (getEmployee().getName().getStrFirstName() == null ||
				getEmployee().getName().getStrFirstName().trim().equals("")){
			addFieldError("employee.name.strFirstName", "First name is required.");
		}//end if strFirstName
		else if (getEmployee().getName().getStrLastName() == null ||
				getEmployee().getName().getStrLastName().trim().equals("")){
			addFieldError("employee.name.strLastName", "Last name is required.");
		}//end else if strLastName
		else if(getEmployee().getStrCivilStatus() == null ||
				getEmployee().getStrCivilStatus().trim().equals("")){
			addFieldError("employee.strCivilStatus", "Civil Status is required.");
		}//end else if strCivilStatus
		else if (getEmployee().getStrGender() == null ||
				getEmployee().getStrGender().trim().equals("")){
			addFieldError("employee.strGender", "Civil Status is required.");
		}//end else if strGender
		else if (getEmployee().getStrPassword() == null ||
				getEmployee().getStrPassword().trim().equals("")){
			addFieldError("employee.strPassword", "Password is required.");
		}//end else if strPassword
		else if (getStrRetypePassword() == null ||
				getStrRetypePassword().trim() == null){
			addFieldError("strRetypePassword", "Retype password is required.");
		}//end else if strRetypePassword
		else if (!getEmployee().getStrPassword().equals(getStrRetypePassword())){
			addFieldError("strRetypePassword", "Should be the same as password.");
			System.out.println("Should be the same as password.");
		}//end else if strPassword != strRetypePassword
		else if (getEmployee().getBirthday() == null){
			addFieldError("employee.birthday", "Birthday is required.");
		}//end else if birthday
		else if (getEmployee().getPosition().getStrPositionDesc() == null ||
				getEmployee().getPosition().getStrPositionDesc().trim().equals("")){
			addFieldError("employee.position.strPositionDesc", "Position is required.");
		}//end else if position

	}

}
