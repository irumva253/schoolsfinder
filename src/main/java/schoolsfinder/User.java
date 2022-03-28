package schoolsfinder;

public class User {
  private int user_id;
  private String fname;
  private String lname;
  private String email;
  private String password;
  private String password2;
  private String phone;
  private String role;
public User() {
	super();
	// TODO Auto-generated constructor stub
}
public User(int user_id, String fname, String lname, String email, String password, String password2, String phone,
		String role) {
	super();
	this.user_id = user_id;
	this.fname = fname;
	this.lname = lname;
	this.email = email;
	this.password = password;
	this.password2 = password2;
	this.phone = phone;
	this.role = role;
}
public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPassword2() {
	return password2;
}
public void setPassword2(String password2) {
	this.password2 = password2;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}


}