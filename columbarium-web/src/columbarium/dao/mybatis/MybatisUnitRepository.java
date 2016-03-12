package columbarium.dao.mybatis;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.UnitRepository;
import columbarium.dao.mybatis.mappers.UnitMapper;
import columbarium.model.Unit;

public class MybatisUnitRepository extends MybatisClient implements UnitRepository{

	public MybatisUnitRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Unit getUnitById(Unit unit) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			UnitMapper unitMapper = sqlSession.getMapper(UnitMapper.class);
			return unitMapper.getUnitById(unit);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String deactivateUnit(Unit unit) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			System.out.println("HERE IN DEACTIVATE..."+unit.getUnitId());
			UnitMapper unitMapper = sqlSession.getMapper(UnitMapper.class);
			unitMapper.deactivateUnit(unit);
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
	public String activateUnit(Unit unit) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			UnitMapper unitMapper = sqlSession.getMapper(UnitMapper.class);
			unitMapper.activateUnit(unit);
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

}
