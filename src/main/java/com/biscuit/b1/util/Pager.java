package com.biscuit.b1.util;

public class Pager {

	//DB
	private Integer curPage; //현재 페이지 번호
	private Integer perPage; //페이지 당 글의 개수
	
	private Integer startRow; //페이지의 시작 글 번호
	private Integer lastRow; //페이지의 마지막 글 번호
	
	
	//View (JSP)
	private Integer startNum; //블럭 시작번호
	private Integer lastNum; //블럭 마지막 번호
	
	private Integer curBlock; //현재 블럭번호
	private Integer totalBlock; //전체 블럭 개수

	
	///// 검색하기
	private String kind; //검색종류
	private String search; //검색어

	

	public Integer getCurPage() {
		if(curPage == null || curPage == 0) {
			curPage = 1;
		}
		return curPage;
	}

	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}
	
	public Integer getPerPage() {
		if(perPage == null || perPage == 0) {
			perPage = 10;
		}
		return perPage;
	}

	public void setPerPage(Integer perPage) {
		this.perPage = perPage;
	}

	public Integer getStartRow() {
		return startRow;
	}

	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}

	public Integer getLastRow() {
		return lastRow;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(search == null) {
			search = "";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public void setLastRow(Integer lastRow) {
		this.lastRow = lastRow;
	}
	
	public Integer getStartNum() {
		return startNum;
	}
	
	public void setStartNum(Integer startNum) {
		this.startNum = startNum;
	}
	
	public Integer getLastNum() {
		return lastNum;
	}
	
	public void setLastNum(Integer lastNum) {
		this.lastNum = lastNum;
	}
	
	public Integer getCurBlock() {
		return curBlock;
	}
	
	public void setCurBlock(Integer curBlock) {
		this.curBlock = curBlock;
	}
	
	public Integer getTotalBlock() {
		return totalBlock;
	}
	
	public void setTotalBlock(Integer totalBlock) {
		this.totalBlock = totalBlock;
	}	

	public void makeRow() {
		this.startRow = (this.getCurPage()-1)*this.getPerPage() + 1;
		this.lastRow = this.getCurPage() * this.getPerPage();
	}
	

	public void makePager(int totalCount) {
		//1. 전체 글 개수 가져오기 totalCount
		
		//2. 전체 페이지 개수 가져오기 totalPage	
		int totalPage = totalCount / this.getPerPage();
		if(totalCount % this.getPerPage() != 0) {
			totalPage++;
		}
		
		//3. 전체 블럭 개수 가져오기 totalBlock
		int perBlock = 5;
		totalBlock = totalPage / perBlock;
		if(totalPage % perBlock != 0) {
			totalBlock++;
		}
		
		//4. 현재 블럭 번호 구하기 curBlock <- 현재페이지로 현재블록번호 구하기
		curBlock = this.getCurPage() / perBlock;
		if(this.getCurPage() % perBlock != 0) {
			curBlock++;
		}
		
		//5. 현재 블럭의 시작페이지번호와 마지막페이지번호 구하기 
		startNum = (curBlock-1) * perBlock + 1;
		lastNum = curBlock * perBlock;
		
		//6. 현재블럭번호가 총블럭번호와 같다면, 그 블럭의 마지막번호는 총 페이지번호와 같다.
		if(curBlock == totalBlock) {
			lastNum = totalPage;
		}
		
		
	}

}