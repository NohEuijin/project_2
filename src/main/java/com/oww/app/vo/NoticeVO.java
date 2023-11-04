package com.oww.app.vo;

import java.sql.Timestamp;

public class NoticeVO {
	private int userNumber;
	private String userNickname;
	private int noticeNumber;
	private String noticeTitle;
	private String noticeContent;
	private Timestamp noticeDate;
	private int noticeCount;
	
	public NoticeVO() {;}

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

	public int getNoticeNumber() {
		return noticeNumber;
	}

	public void setNoticeNumber(int noticeNumber) {
		this.noticeNumber = noticeNumber;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Timestamp getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Timestamp noticeDate) {
		this.noticeDate = noticeDate;
	}

	public int getNoticeCount() {
		return noticeCount;
	}

	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}
	
	@Override
	public String toString() {
		 return userNumber + "," + userNickname+ "," + noticeNumber + "," + noticeTitle + ","
		            + noticeContent + "," + noticeDate+ "," + noticeCount;
		      
	}
}
