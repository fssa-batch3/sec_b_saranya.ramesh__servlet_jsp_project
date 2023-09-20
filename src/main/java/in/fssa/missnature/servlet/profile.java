package in.fssa.missnature.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.exception.ValidationException;
import in.fssa.missnature.model.User;
import in.fssa.missnature.service.UserService;

/**
 * Servlet implementation class profile
 */
@WebServlet("/profile")
public class profile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 HttpSession session = request.getSession();
		 User userDetail = (User) session.getAttribute("loggedInEmail");
		 
		 try {
			
			 request.setAttribute("userDetail", userDetail);
			 RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/profile.jsp");
			 rd.forward(request, response);
		 }
		catch(IllegalArgumentException e) {
			e.printStackTrace();
		}
	}

}
