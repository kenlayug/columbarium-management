package columbarium.business;

import java.util.List;

import columbarium.model.Block;
import columbarium.model.UnitCategory;

public interface BlockBusiness {

	public String								createBlock(Block block);
	public Block								getBlock(String strBlockName);
	public Block								getBlockById(int blockId);
	public String								updateBlock(Block block);
	public String								deactivateBlock(int blockId);
	public List<UnitCategory>					getAllUnitCategoryFromBlock(int blockId);
	
}
