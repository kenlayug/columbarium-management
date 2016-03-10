package columbarium.actions.block;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Block;

public class GetAllBlocksAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<Block>blockList;
	
	public List<Block>getBlockList(){
		return this.blockList;
	}
	
	public String execute(){
		
		blockList = Block.getAllBlocks();
		return "success";
		
	}
	
}
