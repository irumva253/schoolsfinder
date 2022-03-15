package schoolsfinder;

public class InboxFU {
   private String names,email,subject,phone,messages;

public InboxFU() {
	super();
	// TODO Auto-generated constructor stub
}

public InboxFU(String names, String email, String subject, String phone, String messages) {
	super();
	this.names = names;
	this.email = email;
	this.subject = subject;
	this.phone = phone;
	this.messages = messages;
}

public String getNames() {
	return names;
}

public void setNames(String names) {
	this.names = names;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getSubject() {
	return subject;
}

public void setSubject(String subject) {
	this.subject = subject;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getMessages() {
	return messages;
}

public void setMessages(String messages) {
	this.messages = messages;
}
   
 
}
