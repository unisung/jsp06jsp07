package ch18.com.model;

public class LoginBean {
	//속성(property)
	private String id;
	private String passwd;
	//기본생성자(default생성자)
	public LoginBean() {}
	//getters/setters메소드
	public String getId() {	return id;	}
	public void setId(String id) {		this.id = id;	}
	public String getPasswd() {		return passwd;	}
	public void setPasswd(String passwd) {		this.passwd = passwd;	}
	
	//추가메소드
	public boolean validate() {
		if(passwd.equals("admin"))
			return true;
		else
			return false;
	}
	

}
