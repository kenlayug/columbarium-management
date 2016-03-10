package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.BlockRepository;
import columbarium.dao.mybatis.mappers.BlockMapper;
import columbarium.dao.mybatis.mappers.FloorMapper;
import columbarium.model.Block;
import columbarium.model.Floor;
import columbarium.model.Unit;
import columbarium.model.UnitCategory;

public class MybatisBlockRepository extends MybatisClient implements BlockRepository{

	public MybatisBlockRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String createBlock(Block block) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BlockMapper blockMapper = sqlSession.getMapper(BlockMapper.class);
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			if (blockMapper.checkIfExistingBlock(block) > 0){
				return "failed-existing";
			}
			System.out.println(block.getFloorId());
			blockMapper.createBlock(block);
			Block currentBlock = blockMapper.getBlock(block);
			Floor floor = new Floor();
			floor.setFloorId(block.getFloorId());
			floor = floorMapper.getFloor(floor);
			for (int intLevel = 0; intLevel < block.getIntLevelNo(); intLevel++){
				UnitCategory unitCategory = new UnitCategory(currentBlock.getBlockId(), intLevel+1);
				blockMapper.createUnitCategory(unitCategory);
				for(int intColumn = 0; intColumn < block.getIntColumnNo(); intColumn++){
					
					Unit unit = new Unit();
					unit.setBlockId(currentBlock.getBlockId());
					unit.setBuildingId(floor.getBuildingId());
					unit.setFloorId(floor.getFloorId());
					unit.setIntColumnNo(intColumn+1);
					unit.setIntLevelNo(intLevel+1);
					unit.setStrUnitType(block.getStrUnitType());
					blockMapper.createUnit(unit);
					
				}//for intLevel
				
			}//for intColumn
			
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
	public Block getBlock(Block block) {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BlockMapper blockMapper = sqlSession.getMapper(BlockMapper.class);
			if (blockMapper.checkIfExistingBlock(block) > 0){
				return blockMapper.getBlock(block);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public List<Block> getAllBlocksFromFloor(Floor floor) {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BlockMapper blockMapper = sqlSession.getMapper(BlockMapper.class);
			FloorMapper floorMapper = sqlSession.getMapper(FloorMapper.class);
			floor = floorMapper.getFloor(floor);
			return blockMapper.getAllBlockFromFloor(floor);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String updateBlock(Block block) {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BlockMapper blockMapper = sqlSession.getMapper(BlockMapper.class);
			if (blockMapper.checkIfExistingBlock(block) > 0){
				blockMapper.updateBlock(block);
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
		return null;
	}

	@Override
	public List<Block> getAllBlocks() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			BlockMapper blockMapper = sqlSession.getMapper(BlockMapper.class);
			return blockMapper.getAllBlock();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

}
