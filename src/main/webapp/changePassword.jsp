<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/schoolsfinder";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from tbl_users where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(3);
}
System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update tbl_users set password='"+Newpass+"' where user_id='"+id+"'");
out.println("<script type=\"text/javascript\">");  
out.println("alert('Password changed successfullyl.');");
out.println("window.location= \"account-security.jsp\"");
out.println("</script>");
st1.close();
con.close();
}
else{
	out.println("<script type=\"text/javascript\">");  
	out.println("alert('Invalid Current Password.');");
	out.println("window.location= \"account-security.jsp\"");
	out.println("</script>");
}
}
catch(Exception e){
out.println(e);
}
%>