package com.bookforest.bean;
/**
 * 用户实体类
 * @author zhoulj
 *
 */
public class User {

	private String userId;

    private String userName;

    private String userPwd;

    private String userRole;

    private String email;

    private double dataFlow;

    private String userState;

    private String lastIp;
    
    private String loginIp;
    
    private String imgUrl;
    
    

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd == null ? null : userPwd.trim();
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole == null ? null : userRole.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Double getDataFlow() {
        return dataFlow;
    }

    public void setDataFlow(Double dataFlow) {
        this.dataFlow = dataFlow;
    }

    public String getUserState() {
        return userState;
    }

    public void setUserState(String userState) {
        this.userState = userState == null ? null : userState.trim();
    }

    public String getLastIp() {
        return lastIp;
    }

    public void setLastIp(String lastIp) {
        this.lastIp = lastIp == null ? null : lastIp.trim();
    }

	public String getLoginIp() {
		return loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	public void setDataFlow(double dataFlow) {
		this.dataFlow = dataFlow;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", userRole=" + userRole
				+ ", email=" + email + ", dataFlow=" + dataFlow + ", userState=" + userState + ", lastIp=" + lastIp
				+ ", loginIp=" + loginIp + "]";
	}

	
	
	
	
}
