
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import schoolsfinder.DatabaseConnection;

/**
 * Servlet implementation class Inbox
 */
@WebServlet("/Inbox")
public class Inbox extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbDriver="com.mysql.cj.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/schoolsfinder";
	private String user="root";
    private String pass="";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String unames = request.getParameter("unames");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String phone = request.getParameter("phone");
		String messages = request.getParameter("messages");
		java.sql.Timestamp sent_date = new java.sql.Timestamp(new java.util.Date().getTime());
		
		DatabaseConnection bdc = new DatabaseConnection();
		bdc.loadDriver(dbDriver);
		Connection con =bdc.getConnection();
		String sql = "INSERT INTO inbox_messages (unames,email,subject,phone,messages,sent_date) VALUES (?,?,?,?,?,?)";
		String message ="Message Sent";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
		//	ps.setString(1, null);
			ps.setString(1, unames);
			ps.setString(2, email);
			ps.setString(3, subject);
			ps.setString(4, phone);
			ps.setString(5, messages);
			ps.setTimestamp(6, sent_date);
			
			ps.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			message=e.toString();
			e.printStackTrace();
		}
		
		 request.setAttribute("Message", message);
        //request.setAttribute("message", message);
		PrintWriter out = response.getWriter();  
		out.println("<script type=\"text/javascript\">");  
        out.println("alert('Message Sent');");
        out.println("window.location= \"contact.jsp\"");
        out.println("</script>");
		
	}
}

