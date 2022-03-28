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
int i=st.executeUpdate("DELETE FROM school_acc_details WHERE school_id="+id);
//PrintWriter out = response.getWriter();  
out.println("<script type=\"text/javascript\">");  
out.println("alert('School Deleted Successful.');");
out.println("window.location= \"tables-master.jsp\"");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>