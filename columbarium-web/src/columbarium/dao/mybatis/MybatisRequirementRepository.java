package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.RequirementRepository;
import columbarium.dao.mybatis.mappers.RequirementMapper;
import columbarium.model.Requirement;

public class MybatisRequirementRepository extends MybatisClient implements RequirementRepository{

	public MybatisRequirementRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String createRequirement(Requirement requirement) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			RequirementMapper requirementMapper = sqlSession.getMapper(RequirementMapper.class);
			if (requirementMapper.checkIfExistingRequirement(requirement) > 0){
				return "failed-existing";
			}
			requirementMapper.insertRequirement(requirement);
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
	public Requirement readRequirement(Requirement requirement) {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			RequirementMapper requirementMapper = sqlSession.getMapper(RequirementMapper.class);
			if (requirementMapper.checkIfExistingRequirement(requirement) > 0){
				return requirementMapper.selectRequirement(requirement);
			}
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String updateRequirement(Requirement requirement) {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			RequirementMapper requirementMapper = sqlSession.getMapper(RequirementMapper.class);
			if (requirementMapper.checkIfExistingRequirement(requirement) > 0){
				requirementMapper.updateRequirement(requirement);
				sqlSession.commit();
				return "success";
			}
			return "failed-does-not-exist";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
		
	}

	@Override
	public String deactivateRequirement(Requirement requirement) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			RequirementMapper requirementMapper = sqlSession.getMapper(RequirementMapper.class);
			if (requirementMapper.checkIfExistingRequirement(requirement) > 0){
				requirementMapper.deactivateRequirement(requirement);
				sqlSession.commit();
				System.out.println(requirement.getRequirementId());
				return "success";
			}
			return "failed-does-not-exist";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public List<Requirement> getAllRequirements() {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			RequirementMapper requirementMapper = sqlSession.getMapper(RequirementMapper.class);
			if (requirementMapper.countAllRequirement() > 0){
				return requirementMapper.getAllRequirements();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
		
	}

	@Override
	public List<Requirement> searchRequirementByName(Requirement requirement) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			RequirementMapper requirementMapper = sqlSession.getMapper(RequirementMapper.class);
			if (requirementMapper.checkIfExistingRequirement(requirement) > 0){
				return requirementMapper.searchRequirementByName(requirement);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
		
	}

}
