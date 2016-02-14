package columbarium.model;

public class Customer extends Person{

	private Integer customerId;
	private String strAddress;
	private String strContactNo;
	private Name spouse;
	
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public String getStrAddress() {
		return strAddress;
	}
	public void setStrAddress(String strAddress) {
		this.strAddress = strAddress;
	}
	public String getStrContactNo() {
		return strContactNo;
	}
	public void setStrContactNo(String strContactNo) {
		this.strContactNo = strContactNo;
	}
	public Name getSpouse() {
		return spouse;
	}
	public void setSpouse(Name spouse) {
		this.spouse = spouse;
	}
	public String toString(){
		return getCustomerId()+" -- "+getName();
	}
	
}
