

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
 * Servlet implementation class CreatePost
 */
@WebServlet("/CreatePost")
@MultipartConfig(maxFileSize = 16177215)
public class CreatePost extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbDriver="com.mysql.cj.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/schoolsfinder";
	private String user="root";
    private String pass="";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreatePost() {
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
		String post_title = request.getParameter("post_title");
		String post_preview = request.getParameter("post_preview");
		String post_content = request.getParameter("post_content");
		java.sql.Timestamp post_date = new java.sql.Timestamp(new java.util.Date().getTime());
	//	String post_date= request.getParameter("post_date");
		String status = request.getParameter("status");
		String author = request.getParameter("author");
		
	//	PrepStmt.setTimestamp(1, date);
		
		InputStream inputStream = null; 
        Part filePart = request.getPart("poster");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        
        Connection conn = null; // connection to the database
        String message = "Published";  // message will be sent back to client
		  try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		       conn = DriverManager.getConnection(url,user,pass);
		       String sql = "INSERT INTO post_events (post_id,post_title,post_preview,post_content,post_date,status,author,poster) VALUES (?,?,?,?,?,?,?,?)";
	            PreparedStatement statement = conn.prepareStatement(sql);
	            statement.setString(1, null);
	            statement.setString(2, post_title);
	            statement.setString(3, post_preview);
	            statement.setString(4, post_content);
	            statement.setTimestamp(5, post_date);
	            statement.setString(6, status);
	            statement.setString(7, author);
	            if (inputStream != null) {
	                // fetches input stream of the upload file for the blob column
		        	  statement.setBlob(8, inputStream);
	            }
	            if(statement.executeUpdate()>0) {
	            	   message = "Published";
	            }
		   
    } catch (SQLException ex) {
        message = "ERROR: " + ex.getMessage();
        ex.printStackTrace();
    } finally {
        if (conn != null) {
            // closes the database connection
            try {
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        request.setAttribute("Message", message);
        //request.setAttribute("message", message);
		PrintWriter out = response.getWriter();  
		out.println("<script type=\"text/javascript\">");  
        out.println("alert('Published Successfully ');");
        out.println("window.location= \"blog-management-create-post.jsp\"");
        out.println("</script>");
      
    }
   }
}

