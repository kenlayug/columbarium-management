package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Block;
import columbarium.model.Floor;
import columbarium.model.Unit;
import columbarium.model.UnitCategory;

public interface BlockMapper {

	public void										createBlock(Block block);
	public void										createUnit(Unit unit);
	public void										createUnitCategory(UnitCategory unitCategory);
	
	public Block									getBlock(Block block);
	
	public void										updateBlock(Block block);
	
	public List<Block>								getAllBlockFromFloor(Floor floor);
	public List<Block>								getAllBlock();
	
	public int										checkIfExistingBlock(Block block);
	
}
