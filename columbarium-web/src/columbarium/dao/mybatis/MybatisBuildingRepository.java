package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.BuildingRepository;
import columbarium.dao.mybatis.mappers.BuildingMapper;
import columbarium.model.Building;
import columbarium.model.Floor;

public class MybatisBuildingRepository extends MybatisClient implements BuildingRepository{

	public MybatisBuildingRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String createBuilding(Building building) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BuildingMapper buildingMapper = sqlSession.getMapper(BuildingMapper.class);
			System.out.println(buildingMapper.checkIfExistingBuilding(building));
			
			if (buildingMapper.checkIfExistingBuilding(building) > 0){
				return "failed-existing";
			}
			buildingMapper.createBuilding(building);
			building = buildingMapper.getBuilding(building);
			for (int intCtr = 0; intCtr < building.getIntNoOfFloors(); intCtr++){
				Floor floor = new Floor(building.getBuildingId(), intCtr+1);
				buildingMapper.createFloor(floor);
			}
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
	public List<Building> getAllBuilding() {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BuildingMapper buildingMapper = sqlSession.getMapper(BuildingMapper.class);
			if (buildingMapper.countAllBuilding() > 0){
				List<Building>buildingList = buildingMapper.getAllBuilding();
				return buildingList;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public Building getBuilding(Building building) {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BuildingMapper buildingMapper = sqlSession.getMapper(BuildingMapper.class);
			if (buildingMapper.checkIfExistingBuilding(building) != 0){
				return buildingMapper.getBuilding(building);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String updateBuilding(Building building) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BuildingMapper buildingMapper = sqlSession.getMapper(BuildingMapper.class);
			if (buildingMapper.checkIfExistingBuilding(building) > 0){
				buildingMapper.updateBuilding(building);
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
	public String deactivateBuilding(Building building) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BuildingMapper buildingMapper = sqlSession.getMapper(BuildingMapper.class);
			if (buildingMapper.checkIfExistingBuilding(building) > 0){
				buildingMapper.deactivateBuilding(building);
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
	
	

}
