package columbarium.service.impl;

import java.util.List;

import columbarium.business.BlockBusiness;
import columbarium.dao.BlockRepository;
import columbarium.model.Block;
import columbarium.model.Floor;
import columbarium.service.BlockService;

public class BlockServiceImpl implements BlockService{

	private BlockRepository							blockRepository;
	private BlockBusiness							blockBusiness;
	
	public void setBlockRepository(BlockRepository blockRepository){
		this.blockRepository = blockRepository;
	}
	
	public void setBlockBusiness(BlockBusiness blockBusiness){
		this.blockBusiness = blockBusiness;
	}
	
	@Override
	public String createBlock(Block block) {
		return blockBusiness.createBlock(block);
	}

	@Override
	public Block getBlock(String strBlockName) {
		return blockBusiness.getBlock(strBlockName);
	}

	@Override
	public List<Block> getAllBlockFromFloor(Floor floor) {
		return blockRepository.getAllBlocksFromFloor(floor);
	}

}