package columbarium.actions.block;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Block;

public class UpdateBlockAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Block block;
	private int blockId;
	private String strStatus;
	
	public void setBlockId(int blockId){
		this.blockId = blockId;
	}
	
	public void setBlock(Block block){
		this.block = block;
	}
	
	public String getStatus(){
		return strStatus;
	}
	
	public String execute(){

		block.setBlockId(blockId);
		System.out.println(block.getBlockId());
		System.out.println(block.getStrBlockName());
		strStatus = block.update();
		System.out.println(strStatus);
		return "success";
		
	}
	
}
