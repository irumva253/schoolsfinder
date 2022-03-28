<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/schoolsfinder";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
        String user_id = request.getParameter("user_id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String role = request.getParameter("role");
		
		if(user_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int id = Integer.parseInt(user_id );
try
{

 Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql="UPDATE tbl_users SET user_id=?, fname=?, lname=?, email=?,phone=?,role=? WHERE user_id=" +user_id;
	ps = con.prepareStatement(sql);
	
	ps.setString(1, user_id);
	ps.setString(2, fname);
	ps.setString(3, lname);
	ps.setString(4, email);
	ps.setString(5, phone);
	ps.setString(6, role);
   
   int i = ps.executeUpdate();
if(i > 0)
{
out.println("<script type=\"text/javascript\">");  
out.println("alert('User Updated Successful.');");
out.println("window.location= \"user-management-list.jsp\"");
out.println("</script>");
}
else
{
out.println("<script type=\"text/javascript\">");  
out.println("alert('There is a problem in updating Record.');");
out.println("window.location= \"user-management-list.jsp\"");
out.println("</script>");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>