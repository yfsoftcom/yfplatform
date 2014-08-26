package biz.yf.oa.bo;

public class User extends Bo {

	private static final long serialVersionUID = 111537015703852351L;

	
	private String loginName,loginPass,email,loginIP;
	
	
	private byte isAdmin = 0;
	
	private int status = 0;
	
	private long loginTime,activeTime;

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPass() {
		return loginPass;
	}

	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLoginIP() {
		return loginIP;
	}

	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}

	public boolean isAdmin() {
		return isAdmin == 1;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = (byte)(isAdmin?1:0);
	}

	public void setAdmin(byte isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public long getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(long loginTime) {
		this.loginTime = loginTime;
	}

	public long getActiveTime() {
		return activeTime;
	}

	public void setActiveTime(long activeTime) {
		this.activeTime = activeTime;
	}
	
	
	
}
