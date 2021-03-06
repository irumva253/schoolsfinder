
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet implementation class Logout_outh
 */
@WebServlet("/Logout_outh")
public class Logout_outh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout_outh() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
        	session.removeAttribute("userInfo");
            session.removeAttribute("user");
             
            RequestDispatcher dispatcher = request.getRequestDispatcher("auth-login.jsp");
            dispatcher.forward(request, response);
        }
    }
}