package com.oww.app.vo;

public class SearchVO {
	private String keyword;
	private String searchType;
	
	public SearchVO() {}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	@Override
	public String toString() {
		return "SearchVO [keyword=" + keyword + ", searchType=" + searchType + "]";
	}
}
