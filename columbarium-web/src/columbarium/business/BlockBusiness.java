package columbarium.business;

import columbarium.model.Block;

public interface BlockBusiness {

	public String								createBlock(Block block);
	public Block								getBlock(String strBlockName);
	
}
