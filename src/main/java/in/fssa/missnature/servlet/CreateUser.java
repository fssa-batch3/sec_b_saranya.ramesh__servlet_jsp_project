package in.fssa.missnature.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.logger.Logger;
import in.fssa.missnature.model.User;
import in.fssa.missnature.service.UserService;

/**
 * Servlet implementation class CreateUser
 */
@WebServlet("/Create")
public class CreateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User user = new User();

		try {

			if (request.getParameter("name") == null || request.getParameter("name").isEmpty()) {
				Logger.info("Name cannot be null or empty");
			} else {
				user.setName(request.getParameter("name"));
			}

			if (request.getParameter("email") == null || request.getParameter("email").isEmpty()) {
				Logger.info("Email cannot be null or empty");
			} else {
				user.setEmail(request.getParameter("email"));
			}
			if (request.getParameter("password") == null || request.getParameter("password").isEmpty()) {
				Logger.info("Password cannot be null or empty");
			} 
			if(request.getParameter("password").equals(request.getParameter("cfm-password"))) {
				user.setPassword(request.getParameter("password"));
			}
			else {
				throw new IllegalArgumentException("password and confirm password doesn't match");
			}
			user.setMobileNumber(Long.parseLong(request.getParameter("phone_number")));

			Logger.info(user.toString());

			UserService userService = new UserService();
			userService.createUser(user);
			response.sendRedirect(request.getContextPath() + "/sign_in.jsp");
			
		} catch (ServiceException | IllegalArgumentException e) {
			String errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("sign_up.jsp").forward(request, response);
		}
	}
}
