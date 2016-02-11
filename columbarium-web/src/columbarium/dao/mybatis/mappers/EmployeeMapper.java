package columbarium.dao.mybatis.mappers;

import columbarium.model.Employee;
import columbarium.model.Position;

public interface EmployeeMapper {
	
	public void saveEmployee(Employee employee);
	public Employee getEmployee(Employee employee);
	public void updateEmployee(Employee employee);
	public int checkIfExisting(Employee employee);
	
	public int savePosition(Position position);
	public int checkIfExistingPosition(Position position);
	public Position getPosition(Position position);

}
