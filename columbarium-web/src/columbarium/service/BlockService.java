package columbarium.service;

import java.util.List;

import columbarium.model.Block;
import columbarium.model.Floor;

public interface BlockService {

	public String							createBlock(Block block);
	public Block							getBlock(String strBlockName);
	public Block							getBlockById(int blockId);
	public String							updateBlock(Block block);
	public String							deactivateBlock(int blockId);
	
	public List<Block>						getAllBlockFromFloor(Floor floor);
	public List<Block>						getAllBlocks();
	
}
