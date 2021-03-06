package columbarium.dao;

import java.util.List;

import columbarium.model.Block;
import columbarium.model.Floor;
import columbarium.model.UnitCategory;

public interface BlockRepository {

	public String								createBlock(Block block);
	public Block								getBlock(Block block);
	public String								updateBlock(Block block);
	public String								deactivateBlock(Block block);
	
	public List<Block>							getAllBlocksFromFloor(Floor floor);
	public List<Block>							getAllBlocks();
	public List<UnitCategory>					getAllUnitCategoryFromBlock(Block block);
	
}
