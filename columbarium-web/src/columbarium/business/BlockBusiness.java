package columbarium.business;

import columbarium.model.Block;

public interface BlockBusiness {

	public String								createBlock(Block block);
	public Block								getBlock(String strBlockName);
	public Block								getBlockById(int blockId);
	public String								updateBlock(Block block);
	public String								deactivateBlock(int blockId);
	
}
