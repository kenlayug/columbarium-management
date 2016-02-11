package columbarium.model;

public class Position {

	private int positionId;
	private String strPositionDesc;
	public Position(){
		
	}
	public int getPositionId() {
		return positionId;
	}
	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}
	public String getStrPositionDesc() {
		return strPositionDesc;
	}
	public void setStrPositionDesc(String strPositionDesc) {
		this.strPositionDesc = strPositionDesc;
	}
	public String toString(){
		return getStrPositionDesc();
	}
	
}
