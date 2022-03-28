

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
 * Servlet implementation class UpdateStatusVisibility
 */
@WebServlet("/UpdateStatusVisibility")
public class UpdateStatusVisibility extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbDriver="com.mysql.cj.jdbc.Driver";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatusVisibility() {
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
		String school_id = request.getParameter("school_id");
		String status = request.getParameter("status");
		DatabaseConnection dbc = new DatabaseConnection();
		dbc.loadDriver(dbDriver);
		Connection con =dbc.getConnection();
		String message="not updated";
        String sql = "UPDATE school_acc_details SET status='"+status+"'WHERE school_id=1";
    
        try {
			PreparedStatement ps = con.prepareStatement(sql);
           int i= ps.executeUpdate();
			
           if(i > 0) {
        	   message="updated well";
           }
		
    	   
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (con != null) {
            // closes the database connection
             request.setAttribute("Message", message);
            //request.setAttribute("message", message);
    		PrintWriter out = response.getWriter();  
    		out.println("<script type=\"text/javascript\">");  
            out.println("alert('Updated Successfully');");
            out.println("window.location= \"tables-master.jsp\"");
            out.println("</script>");
           
                try {
                    con.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            
            else {
            	PrintWriter out = response.getWriter();
            	//out.println("<script type="\text/javascript\">");
            }
        }
       }
    }
