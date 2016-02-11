package columbarium.model;

public class Name {

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((strFirstName == null) ? 0 : strFirstName.hashCode());
		result = prime * result + ((strLastName == null) ? 0 : strLastName.hashCode());
		result = prime * result + ((strMiddleName == null) ? 0 : strMiddleName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Name)) {
			return false;
		}
		Name other = (Name) obj;
		if (strFirstName == null) {
			if (other.strFirstName != null) {
				return false;
			}
		} else if (!strFirstName.equals(other.strFirstName)) {
			return false;
		}
		if (strLastName == null) {
			if (other.strLastName != null) {
				return false;
			}
		} else if (!strLastName.equals(other.strLastName)) {
			return false;
		}
		if (strMiddleName == null) {
			if (other.strMiddleName != null) {
				return false;
			}
		} else if (!strMiddleName.equals(other.strMiddleName)) {
			return false;
		}
		return true;
	}
	private String strFirstName;
	private String strMiddleName;
	private String strLastName;
	
	public Name(){
		
	}
	
	public Name(String strFirstName, String strMiddleName, String strLastName){
		this.strFirstName = strFirstName;
		this.strMiddleName = strMiddleName;
		this.strLastName = strLastName;
	}
	
	public String getStrFirstName() {
		return strFirstName;
	}
	public void setStrFirstName(String strFirstName) {
		this.strFirstName = strFirstName;
	}
	public String getStrMiddleName() {
		return strMiddleName;
	}
	public void setStrMiddleName(String strMiddleName) {
		this.strMiddleName = strMiddleName;
	}
	public String getStrLastName() {
		return strLastName;
	}
	public void setStrLastName(String strLastName) {
		this.strLastName = strLastName;
	}
	public String toString(){
		return getStrFirstName()+" "+getStrLastName();
	}
	
}
