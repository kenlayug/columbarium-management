package columbarium.actions.unit;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Block;

public class GetAllUnitFromBlockAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Block block;
	private int blockId;

	public Block getBlock(){
		return block;
	}
	
	public void setBlockId(int blockId){
		this.blockId = blockId;
	}
	
	public String execute(){
		
		block = Block.getBlockById(blockId);
		return "success";
		
	}
	
}
