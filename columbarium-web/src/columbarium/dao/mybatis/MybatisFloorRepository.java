package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.FloorRepository;
import columbarium.dao.mybatis.mappers.FloorMapper;
import columbarium.model.Floor;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;

public class MybatisFloorRepository extends MybatisClient implements FloorRepository{

	public MybatisFloorRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String configureFloor(Floor floor) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			if (floorMapper.checkIfExistingFloor(floor) > 0){
				floor.setFloorId(floorMapper.getFloor(floor).getFloorId());
				floorMapper.configureFloor(floor);
				for(int intCtr = 0; intCtr < floor.getIntLevelNo(); intCtr++){
					UnitCategory unitCategory = new UnitCategory(floor.getFloorId(), intCtr+1);
					if (floorMapper.checkIfExistingUnitCategory(unitCategory) > 0){
						
					}else{
						floorMapper.createUnitCategory(unitCategory);
					}
				}
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
	public String createFloorType(FloorType floorType) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			if (floorMapper.checkIfExistingFloorType(floorType) > 0){
				return "failed-existing";
			}
			floorMapper.createFloorType(floorType);
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
	public FloorType getFloorType(FloorType floorType) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			if (floorMapper.checkIfExistingFloorType(floorType) > 0){
				return floorMapper.getFloorType(floorType);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public List<FloorType> getAllFloorType() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			return floorMapper.getAllFloorType();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

}
