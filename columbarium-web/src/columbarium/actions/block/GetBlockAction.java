package columbarium.actions.block;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Block;

public class GetBlockAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private int blockId;
	private Block block;
	
	public void setBlockId(int blockId){
		this.blockId = blockId;
	}
	
	public Block getBlock(){
		return this.block;
	}
	
	public String execute(){
		
		block = Block.getBlockById(blockId);
		return "success";
		
	}
	
}
