package columbarium.model;

import java.util.Date;

public class Person {

	private Name name;
	private String strGender;
	private String strCivilStatus;
	private long birthday;
	public Name getName() {
		return name;
	}
	public void setName(Name name) {
		this.name = name;
	}
	public String getStrGender() {
		return strGender;
	}
	public void setStrGender(String strGender) {
		this.strGender = strGender;
	}
	public String getStrCivilStatus() {
		return strCivilStatus;
	}
	public void setStrCivilStatus(String strCivilStatus) {
		this.strCivilStatus = strCivilStatus;
	}
	public Date getBirthday() {
		return new Date(birthday);
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday.getTime();
	}
	
}
