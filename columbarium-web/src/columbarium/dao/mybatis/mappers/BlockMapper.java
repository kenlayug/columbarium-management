package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Block;
import columbarium.model.Floor;
import columbarium.model.Unit;

public interface BlockMapper {

	public void										createBlock(Block block);
	public void										createUnit(Unit unit);
	
	public Block									getBlock(Block block);
	
	public void										updateBlock(Block block);
	
	public List<Block>								getAllBlockFromFloor(Floor floor);
	
	public int										checkIfExistingBlock(Block block);
	
}
