package columbarium.actions.block;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Block;

public class DeactivateBlockAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private int blockId;
	private String strStatus;
	
	public void setBlockId(int blockId){
		this.blockId = blockId;
	}
	
	public String getStatus(){
		return strStatus;
	}
	
	public String execute(){
		
		strStatus = Block.deactivate(blockId);
		return "success";
		
	}
	
}
