package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.ServiceRepository;
import columbarium.dao.mybatis.mappers.ServiceMapper;
import columbarium.model.Service;

public class MybatisServiceRepository extends MybatisClient implements ServiceRepository{

	public MybatisServiceRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String createService(Service service) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ServiceMapper serviceMapper = sqlSession.getMapper(ServiceMapper.class);
			if (serviceMapper.checkIfExisting(service) > 0){
				return "failed-existing";
			}
			serviceMapper.saveService(service);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			sqlSession.rollback();
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
		
	}

	@Override
	public Service searchService(Service service) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ServiceMapper serviceMapper = sqlSession.getMapper(ServiceMapper.class);
			if (serviceMapper.checkIfExisting(service) > 0){
				return serviceMapper.getService(service);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String updateService(Service service) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ServiceMapper serviceMapper = sqlSession.getMapper(ServiceMapper.class);
			if (serviceMapper.checkIfExisting(service) <= 0){
				return "failed-does-not-exist";
			}
			serviceMapper.updateService(service);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public List<Service> getAllService() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ServiceMapper serviceMapper = sqlSession.getMapper(ServiceMapper.class);
			if (serviceMapper.countAllService() > 0){
				return serviceMapper.getAllService();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String deactivateService(Service service) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ServiceMapper serviceMapper = sqlSession.getMapper(ServiceMapper.class);
			if (serviceMapper.checkIfExisting(service) <= 0){
				return "failed-does-not-exist";
			}
			serviceMapper.deactivateService(service);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public int getLastServiceId() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ServiceMapper serviceMapper = sqlSession.getMapper(ServiceMapper.class);
			if (serviceMapper.countAllService() != 0){
				return serviceMapper.getLastServiceId();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return 0;
	}

	@Override
	public List<Service> searchServiceByName(Service service) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ServiceMapper serviceMapper = sqlSession.getMapper(ServiceMapper.class);
			return serviceMapper.searchServiceList(service);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

}
