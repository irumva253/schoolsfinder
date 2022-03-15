

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import schoolsfinder.DatabaseConnection;
import schoolsfinder.InboxFU;

/**
 * Servlet implementation class InboxServlet
 */
@WebServlet("/InboxServlet")
public class InboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InboxServlet() {
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

		String names     = request.getParameter("names");
    	String email     = request.getParameter("email");
        String subject   = request.getParameter("subject");
        String phone     = request.getParameter("phone");
        String messages  = request.getParameter("messages");
        
         InboxFU msg = new InboxFU(names,email,subject,phone,messages);
         DatabaseConnection dbcon=new DatabaseConnection();
 		 String result =  dbcon.InboxMessage(msg);
 		response.getWriter().print(result);
 	      }	
 		}
        