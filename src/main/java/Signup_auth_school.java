

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



/**
 * Servlet implementation class Signup_auth_school
 */
@WebServlet("/Signup_auth_school")
@MultipartConfig(maxFileSize = 16177215) 
public class Signup_auth_school extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@SuppressWarnings("unused")
	private String dbDriver="com.mysql.cj.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/schoolsfinder";
	private String user="root";
    private String pass="";
  //  private String drivename="com.mysql.cj.jdbc.Driver";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup_auth_school() {
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
		String sname = request.getParameter("sname");
		String smotto = request.getParameter("smotto");
		String sprovince = request.getParameter("sprovince");
		String sdistrict = request.getParameter("sdistrict");
		String ssector = request.getParameter("ssector");
		String sphone = request.getParameter("sphone");
		String semail = request.getParameter("semail");
		String spreview = request.getParameter("spreview");
		java.sql.Timestamp joining_date = new java.sql.Timestamp(new java.util.Date().getTime());
		String snursery = request.getParameter("snursery");
		String sprimary = request.getParameter("sprimary");
		String ssecondary = request.getParameter("ssecondary");
		String sa2 = request.getParameter("sa2");
		String tvets = request.getParameter("tvets");
		String status = request.getParameter("status");
		
		InputStream inputStream = null; 
        Part filePart = request.getPart("slogo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
		
		
		Connection conn = null; // connection to the database
        String message = "Added";  // message will be sent back to client
		  try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		       conn = DriverManager.getConnection(url,user,pass);
		       String sql = "INSERT INTO school_acc_details(school_id,sname,smotto,sprovince,sdistrict,ssector,sphone,semail,spreview,joining_date,snursery,sprimary,ssecondary,sa2,tvets,status,slogo) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	            PreparedStatement statement = conn.prepareStatement(sql);
	            statement.setString(1, null);
	            statement.setString(2, sname);
	            statement.setString(3, smotto);
	            statement.setString(4, sprovince);
	            statement.setString(5, sdistrict);
	            statement.setString(6, ssector);
	            statement.setString(7, sphone); 
	            statement.setString(8, semail); 
	            statement.setString(9, spreview);
	            statement.setTimestamp(10, joining_date);
	            statement.setString(11, snursery);
	            statement.setString(12,sprimary);
	            statement.setString(13,ssecondary);
	            statement.setString(14, sa2);
	            statement.setString(15, tvets);
	            statement.setString(16, status);
	            if (inputStream != null) {
	                // fetches input stream of the upload file for the blob column
		        	  statement.setBlob(17, inputStream);
	            }
	            if(statement.executeUpdate()>0) {
	            	   message = "School Registered";
	            }
		   
    } catch (SQLException ex) {
        message = "ERROR: " + ex.getMessage();
        ex.printStackTrace();
    } finally {
        if (conn != null) {
            // closes the database connection
        	 request.setAttribute("Message", message);
        //request.setAttribute("message", message);
		PrintWriter out = response.getWriter();  
		out.println("<script type=\"text/javascript\">");  
        out.println("alert('Successfully Registered | Procced to Bank Information');");
        out.println("window.location= \"admin-profile-school.jsp\"");
        out.println("</script>");
        	
            try {
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
       
      
    }
   }
}

