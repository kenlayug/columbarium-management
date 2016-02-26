package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.BuildingRepository;
import columbarium.dao.mybatis.mappers.BuildingMapper;
import columbarium.dao.mybatis.mappers.FloorMapper;
import columbarium.model.Block;
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
			if (buildingMapper.checkIfExistingBuilding(building) > 0){
				return "failed-existing";
			}
			buildingMapper.createBuilding(building);
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
	public String createFloor(Floor floor) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BuildingMapper buildingMapper = sqlSession.getMapper(BuildingMapper.class);
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			Building building = new Building();
			building.setBuildingId(floor.getBuildingId());
			if (floorMapper.selectAllFloorsOfBuilding(building) == null){
				floor.setIntFloorNo(1);
			}else{
				floor.setIntFloorNo(floorMapper.selectAllFloorsOfBuilding(building).size()+1);
			}
			buildingMapper.createFloor(floor);
			floor = buildingMapper.selectLastFloorCreated();
			for (int intCtr = 0; intCtr < floor.getIntLevelNo(); intCtr++){
				floor.setCurrentLevel(intCtr+1);
				buildingMapper.createUnitCategory(floor);
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
	public String createBlock(Block block) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BuildingMapper buildingMapper = sqlSession.getMapper(BuildingMapper.class);
			if (buildingMapper.checkIfExistingBlock(block) > 0){
				return "failed-existing";
			}
			buildingMapper.createBlock(block);
			Floor floor = new Floor();
			floor.setFloorId(block.getFloorId());
			floor = buildingMapper.selectFloorById(floor);
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
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			if (buildingMapper.countAllBuilding() > 0){
				List<Building>buildingList = buildingMapper.getAllBuilding();
				for (Building building : buildingList) {
					building.setFloorList(floorMapper.selectAllFloorsOfBuilding(building));
				}
				return buildingList;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}
	
	

}
