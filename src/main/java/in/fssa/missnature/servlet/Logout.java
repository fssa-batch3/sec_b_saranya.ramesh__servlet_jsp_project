package in.fssa.missnature.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		if (session != null) {
			session.removeAttribute("loggedInEmail");
			System.out.println("Existing Session ID:" + session.getId());

			// invalidate removes all the session attributes
			session.invalidate();

		}
		else {
			System.out.println("No Session Exists");
		}
		
		response.sendRedirect("sign_in.jsp");
	}
}


