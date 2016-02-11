package columbarium.dao.mybatis;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.EmployeeRepository;
import columbarium.dao.mybatis.mappers.EmployeeMapper;
import columbarium.model.Employee;

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
			return employeeMapper.getEmployee(employee);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

}
