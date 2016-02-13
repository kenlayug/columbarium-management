package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.EmployeeRepository;
import columbarium.dao.mybatis.mappers.EmployeeMapper;
import columbarium.model.Employee;
import columbarium.model.Position;

public class MybatisEmployeeRepository extends MybatisClient implements EmployeeRepository{

	public MybatisEmployeeRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
	}

	@Override
	public String saveEmployee(Employee employee) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
			if (employeeMapper.checkIfExisting(employee) > 0){
				return "failed-existing";
			}
			if (employeeMapper.checkIfExistingPosition(employee.getPosition()) == 0){
				employeeMapper.savePosition(employee.getPosition());
			}
			employee.setPosition(employeeMapper.getPosition(employee.getPosition()));
			employeeMapper.saveEmployee(employee);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			sqlSession.rollback();
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return "saving-failed";
	}

	@Override
	public Employee searchEmployee(Employee employee) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
			if (employeeMapper.checkIfExisting(employee) > 0){
				return employeeMapper.getEmployee(employee);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String deactivateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
			if (employeeMapper.checkIfExisting(employee) > 0){
				employee = searchEmployee(employee);
				employeeMapper.deactivateEmployee(employee);
				sqlSession.commit();
				return "success";
			}
			return "failed-does-not-exist";
			
		}catch(Exception e){
			sqlSession.rollback();
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public String updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
			if(employeeMapper.checkIfExisting(employee) > 0){
				employeeMapper.updateEmployee(employee);
				sqlSession.commit();
				return "success";
			}
			return "failed-does-not-exist";
			
		}catch(Exception e){
			sqlSession.rollback();
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public List<Employee> getAllEmployee() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
			if (employeeMapper.countAllEmployee() > 0){
				return employeeMapper.getAllEmployee();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String loginEmployee(String username, String password) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			Employee employee = new Employee(username, password);
			EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
			if (employeeMapper.checkIfExisting(employee) > 0){
				if (employeeMapper.checkPassword(employee) > 0){
					return "success";
				}
				return "failed-incorrect-password";
			}
			return "failed-does-not-exist";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "failed-database";
	}

	@Override
	public List<Position> getAllPosition() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
			return employeeMapper.getAllPosition();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int getLastEmployeeId() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
			if (employeeMapper.getLastEmployeeId() != null){
				return employeeMapper.getLastEmployeeId();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	
		
		return 0;
	}

}
