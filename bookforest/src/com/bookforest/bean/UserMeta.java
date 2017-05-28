package com.bookforest.bean;

public class UserMeta extends User{

	private String userIndoc;
	
	private Integer articleNum;
	
	private Integer followNum;
	
	private Integer attentionNum;
	
	private Integer wordNum;
	
	private Integer likeNum;

	public String getUserIndoc() {
		return userIndoc;
	}

	public void setUserIndoc(String userIndoc) {
		this.userIndoc = userIndoc;
	}

	public Integer getArticleNum() {
		return articleNum;
	}

	public void setArticleNum(Integer articleNum) {
		this.articleNum = articleNum;
	}

	public Integer getFollowNum() {
		return followNum;
	}

	public void setFollowNum(Integer followNum) {
		this.followNum = followNum;
	}

	public Integer getAttentionNum() {
		return attentionNum;
	}

	public void setAttentionNum(Integer attentionNum) {
		this.attentionNum = attentionNum;
	}

	public Integer getWordNum() {
		return wordNum;
	}

	public void setWordNum(Integer wordNum) {
		this.wordNum = wordNum;
	}

	public Integer getLikeNum() {
		return likeNum;
	}

	public void setLikeNum(Integer likeNum) {
		this.likeNum = likeNum;
	}

	@Override
	public String toString() {
		return "UserMeta [userIndoc=" + userIndoc + ", articleNum=" + articleNum + ", followNum=" + followNum
				+ ", attentionNum=" + attentionNum + ", wordNum=" + wordNum + ", likeNum=" + likeNum + "]";
	}
	
	
}
