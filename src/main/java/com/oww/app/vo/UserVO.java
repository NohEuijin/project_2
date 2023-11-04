package com.oww.app.vo;

import java.sql.Timestamp;

public class UserVO {
	
	private int userNumber;
	private String userNickname;
	private String userEmail;
	private int fboardNumber;
	private String fboardTitle;
	private Timestamp fboardDate;
	private int fboardCount;
	
	public UserVO() {;}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public int getFboardNumber() {
		return fboardNumber;
	}

	public void setFboardNumber(int fboardNumber) {
		this.fboardNumber = fboardNumber;
	}

	public String getFboardTitle() {
		return fboardTitle;
	}

	public void setFboardTitle(String fboardTitle) {
		this.fboardTitle = fboardTitle;
	}

	public Timestamp getFboardDate() {
		return fboardDate;
	}

	public void setFboardDate(Timestamp fboardDate) {
		this.fboardDate = fboardDate;
	}

	public int getFboardCount() {
		return fboardCount;
	}

	public void setFboardCount(int fboardCount) {
		this.fboardCount = fboardCount;
	}

	@Override
	public String toString() {
		return "UserVO [userNumber=" + userNumber + ", userNickname=" + userNickname + ", userEmail=" + userEmail
				+ ", fboardNumber=" + fboardNumber + ", fboardTitle=" + fboardTitle + ", fboardDate=" + fboardDate
				+ ", fboardCount=" + fboardCount + "]";
	}

}
