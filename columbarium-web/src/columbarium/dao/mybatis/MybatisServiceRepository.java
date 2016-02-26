package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.ServiceRepository;
import columbarium.dao.mybatis.mappers.RequirementMapper;
import columbarium.dao.mybatis.mappers.ServiceMapper;
import columbarium.model.Requirement;
import columbarium.model.Service;
import columbarium.model.ServiceRequirement;

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
			RequirementMapper requirementMapper = sqlSession.getMapper(RequirementMapper.class);
			if (serviceMapper.checkIfExisting(service) > 0){
				return "failed-existing";
			}
			serviceMapper.saveService(service);
			sqlSession.commit();
			service.setServiceId(serviceMapper.getServiceId(service));
			for (Requirement requirement : service.getRequirementList()) {
				requirement = requirementMapper.selectRequirement(requirement);
				ServiceRequirement serviceRequirement = new ServiceRequirement
						(service.getServiceId(), requirement.getRequirementId());
				serviceMapper.saveRequirement(serviceRequirement);
			}
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
			RequirementMapper requirementMapper = sqlSession.getMapper(RequirementMapper.class);
			if (serviceMapper.checkIfExisting(service) <= 0){
				return "failed-does-not-exist";
			}
			
			Service serviceOriginal = serviceMapper.getService(service);
			for (Requirement requirementOriginal : serviceOriginal.getRequirementList()) {
				
				if (service.getRequirementList().contains(requirementOriginal)){
					
				}else{
					requirementOriginal = requirementMapper.selectRequirement(requirementOriginal);
					ServiceRequirement serviceRequirement = new ServiceRequirement
							(service.getServiceId(), requirementOriginal.getRequirementId());
					serviceMapper.removeRequirementFromService(serviceRequirement);
				}
				
			}//end foreach
			for (Requirement requirementUpdate : service.getRequirementList()) {
				
				if (serviceOriginal.getRequirementList().contains(requirementUpdate)){
					
				}else{
					requirementUpdate = requirementMapper.selectRequirement(requirementUpdate);
					ServiceRequirement serviceRequirement = new ServiceRequirement
							(service.getServiceId(), requirementUpdate.getRequirementId());
					if (serviceMapper.checkIfExistingRequirementInService(serviceRequirement) == 0){
						serviceMapper.saveRequirement(serviceRequirement);
					}else{
						serviceMapper.addRequirementFromService(serviceRequirement);
					}
				}
				
			}//end foreach
			
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
