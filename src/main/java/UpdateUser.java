

import java.io.IOException;
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
 * Servlet implementation class UpdateUser
 */
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbDriver="com.mysql.cj.jdbc.Driver";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
		String user_id = request.getParameter("user_id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String role = request.getParameter("role");
		
		DatabaseConnection bdc = new DatabaseConnection();
		bdc.loadDriver(dbDriver);
		Connection con =bdc.getConnection();
		String message="not updated";
        String sql = "UPDATE tbl_users SET user_id=?, fname=?, lname=?, email=?,phone=?,role=? WHERE user_id=" +user_id;
       
        try {
			PreparedStatement ps = con.prepareStatement(sql);
			//ps.execute();
		//	ps.execute();
           int i= ps.executeUpdate();
			
           if(i > 0) {
        	   message="updated well";
           }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		//message=e.toString();
		e.printStackTrace();
	}
  //  response.getWriter().print(email);
    request.setAttribute("errorMessage", "re-try");
    
	RequestDispatcher rd = request.getRequestDispatcher("user-management-list.jsp?id="+user_id);
	rd.forward(request, response);
}

}

