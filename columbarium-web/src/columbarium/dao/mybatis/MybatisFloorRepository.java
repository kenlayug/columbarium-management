package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.FloorRepository;
import columbarium.dao.mybatis.mappers.FloorMapper;
import columbarium.model.Floor;
import columbarium.model.FloorDetail;
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
				
				for (FloorType floorType : floor.getFloorTypeList()) {
					FloorDetail floorDetail = new FloorDetail(floor.getFloorId(), floorType.getStrFloorDesc());
					floorMapper.configureFloor(floorDetail);	
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

	@Override
	public List<UnitCategory> getAllUnitCategoryFromFloor(Floor floor) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			floor = floorMapper.getFloor(floor);
			List<UnitCategory>unitCategoryList = floorMapper.getAllUnitCategoryFromFloor(floor);
			for (UnitCategory unitCategory : unitCategoryList) {
				if (floorMapper.getUnitCategoryPrice(unitCategory) != null){
					unitCategory.setDblPrice(floorMapper.getUnitCategoryPrice(unitCategory));
				}
			}
			return unitCategoryList;
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String configureUnitCategoryPrice(List<UnitCategory> unitCategoryList) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			for (UnitCategory unitCategory : unitCategoryList) {
				UnitCategory unitCategoryOrig = floorMapper.getUnitCategory(unitCategory);
				if (floorMapper.getUnitCategoryPrice(unitCategoryOrig) != null){
					unitCategoryOrig.setDblPrice(floorMapper.getUnitCategoryPrice(unitCategoryOrig));
				}
				if (unitCategoryOrig.getDblPrice() != unitCategory.getDblPrice()){
					floorMapper.configureUnitCategoryPrice(unitCategory);
				}
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
	public Floor getFloor(Floor floor) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			if (floorMapper.checkIfExistingFloor(floor) > 0){
				System.out.println("Here in getFloor dao");
				floor = floorMapper.getFloor(floor);
				System.out.println("Floor "+floor.getFloorId()+"in Building "+floor.getBuildingId());
				return floor;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

}
