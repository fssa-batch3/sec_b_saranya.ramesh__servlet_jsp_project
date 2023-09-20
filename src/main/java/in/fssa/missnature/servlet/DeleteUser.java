package in.fssa.missnature.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.service.UserService;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet("/delete_user")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
	try {
		UserService us = new UserService();
		String email = request.getParameter("email");
		us.deleteUser(email);
		if (session != null) {
			session.removeAttribute("loggedInEmail");
			System.out.println("Existing Session ID:" + session.getId());
			session.invalidate();
		}
		response.sendRedirect(request.getContextPath() +"/sign_in.jsp");
		
	} catch(ServiceException e)  {
		e.printStackTrace();	
	}
}
}
