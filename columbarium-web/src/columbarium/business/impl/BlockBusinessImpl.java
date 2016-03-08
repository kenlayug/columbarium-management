package columbarium.business.impl;

import columbarium.business.BlockBusiness;
import columbarium.dao.BlockRepository;
import columbarium.model.Block;

public class BlockBusinessImpl implements BlockBusiness{

	private BlockRepository					blockRepository;
	
	public void setBlockRepository(BlockRepository blockRepository){
		this.blockRepository = blockRepository;
	}
	
	@Override
	public String createBlock(Block block) {
		
		if (block.getStrBlockName() == null ||
				block.getStrBlockName().length() == 0 ||
				block.getStrBlockName().equals(" ")){
			return "input";
		}
		if (block.getIntColumnNo() == 0 || block.getIntColumnNo() == 0){
			return "input";
		}
		
		return blockRepository.createBlock(block);
	}

	@Override
	public Block getBlock(String strBlockName) {
		
		Block block = new Block();
		block.setStrBlockName(strBlockName);
		return blockRepository.getBlock(block);
	}

}
