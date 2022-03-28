

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddPaymentMethod
 */
@WebServlet("/AddPaymentMethod")
@MultipartConfig(maxFileSize = 16177215) 
public class AddPaymentMethod extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbDriver="com.mysql.cj.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/schoolsfinder";
	private String user="root";
    private String pass="";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPaymentMethod() {
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
		String card_name = request.getParameter("card_name");
		String card_comment = request.getParameter("card_comment");
		java.sql.Timestamp cdate = new java.sql.Timestamp(new java.util.Date().getTime());

		InputStream inputStream = null; 
        Part filePart = request.getPart("card_logo");
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
		       String sql = "INSERT INTO tbl_payment_method (p_id, card_name, card_comment, cdate, card_logo) VALUES(?,?,?,?,?)";
		       PreparedStatement statement = conn.prepareStatement(sql);
	            statement.setString(1, null);
	            statement.setString(2, card_name);
	            statement.setString(3, card_comment);
	            statement.setTimestamp(4, cdate);
	            if (inputStream != null) {
	                // fetches input stream of the upload file for the blob column
		        	  statement.setBlob(5, inputStream);
	            }
	            if(statement.executeUpdate()>0) {
	            	   message = "Payment Added";
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
	        out.println("alert('Payment Method Added');");
	        out.println("window.location= \"account-billing.jsp\"");
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


