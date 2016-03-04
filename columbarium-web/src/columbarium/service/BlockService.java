package columbarium.service;

import java.util.List;

import columbarium.model.Block;
import columbarium.model.Floor;

public interface BlockService {

	public String							createBlock(Block block);
	public Block							getBlock(String strBlockName);
	
	public List<Block>						getAllBlockFromFloor(Floor floor);
	
}
