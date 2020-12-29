package com.zzTourr.domain;

public class ComBoardVO {
	private int articleId;
	private String category;
	private String userId;
	private int groupId;
	private	String	sequenceNo;	// 순서번호
	private	String	postingDate;	// 게시날짜
	private	int		readCount;	
	private	String	userName;	// 작성자
	private	String	title;				// 제목
	private	String	content;	
	private int level;
	
	// 내용
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getGroupId() {
		return groupId;
	}
	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
	public String getPostingDate() {
		return postingDate;
	}
	public void setPostingDate(String postingDate) {
		this.postingDate = postingDate;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public String getSequenceNo() {
		return sequenceNo;
	}
	public void setSequenceNo(String sequenceNo) {
		this.sequenceNo = sequenceNo;
	}
	public int getLevel()
	{
		if( sequenceNo == null			)	{ return -1; }
		if( sequenceNo.length() != 16 	) 	{ return -1; }
		if( sequenceNo.endsWith("999999")) 	{ return 0; }
		if( sequenceNo.endsWith("9999")	) 	{ return 1; }
		if( sequenceNo.endsWith("99")	) 	{ return 2; }
		return 3;
	}
}
