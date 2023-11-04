package com.oww.app.dto;

import java.sql.Timestamp;

public class FboardDTO {

//	CREATE TABLE tbl_fboard (
//		    fboard_number int unsigned auto_increment NOT NULL,
//		    user_number int NOT NULL,
//		    fboard_title varchar(100) NOT NULL,
//		    fboard_date timestamp NOT NULL,
//		    fboard_content varchar(1000) NOT NULL,
//		    fboard_count int NOT NULL
//		);
	
	private int fboardNumber;
	private int userNumber;
	private String fboardTitle;
	private Timestamp fboardDate;
	private String fboardContent;
	private int fboardCount;
	
	public FboardDTO() {;}

	public int getFboardNumber() {
		return fboardNumber;
	}

	public void setFboardNumber(int fboardNumber) {
		this.fboardNumber = fboardNumber;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
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

	public String getFboardContent() {
		return fboardContent;
	}

	public void setFboardContent(String fboardContent) {
		this.fboardContent = fboardContent;
	}

	public int getFboardCount() {
		return fboardCount;
	}

	public void setFboardCount(int fboardCount) {
		this.fboardCount = fboardCount;
	}

	@Override
	public String toString() {
	      return fboardNumber + "," + fboardTitle + "," + fboardContent + "," 
	              + fboardDate+ "," + fboardCount;
	}
	
	
}
