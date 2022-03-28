

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import schoolsfinder.DatabaseConnection;

/**
 * Servlet implementation class Auth_signup_parent
 */
@WebServlet("/Signup_auth")
public class Signup_auth extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbDriver="com.mysql.cj.jdbc.Driver";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup_auth() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String role = request.getParameter("role");
		java.sql.Timestamp joining_date = new java.sql.Timestamp(new java.util.Date().getTime());
		String terms =request.getParameter("terms");
		
		DatabaseConnection bdc = new DatabaseConnection();
		bdc.loadDriver(dbDriver);
		Connection con =bdc.getConnection();
		String sql = "INSERT INTO tbl_users (user_id,email,password,fname,lname,gender,phone,role,joining_date,terms) VALUES (?,?,?,?,?,?,?,?,?,?)";
		String message ="Successful registered";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, null);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, fname);
			ps.setString(5, lname);
			ps.setString(6, gender);
			ps.setString(7, phone);
			ps.setString(8, role);
			ps.setTimestamp(9, joining_date);
			ps.setString(10, terms);
			
			ps.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			message=e.toString();
			e.printStackTrace();
		}
		
		request.setAttribute("message", message);
		PrintWriter out = response.getWriter();  
		out.println("<script type=\"text/javascript\">");  
        out.println("alert('Successfully Registered.');");
        out.println("window.location= \"auth-login.jsp\"");
        out.println("</script>");
		
	}

}
