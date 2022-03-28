<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolsfinder", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM tbl_users WHERE user_id="+id);
//PrintWriter out = response.getWriter();  
out.println("<script type=\"text/javascript\">");  
out.println("alert('User Deleted Successful.');");
out.println("window.location= \"user-management-list.jsp\"");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>