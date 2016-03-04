package columbarium.actions.block;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Block;

public class CreateBlockAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Block block;
	private String strStatus;
	
	public String getStatus(){
		return this.strStatus;
	}
	
	public void setBlock(Block block){
		this.block = block;
	}
	
	public String execute(){
		
		strStatus = block.create();
		return "success";
		
	}
	
}
