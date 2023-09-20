package in.fssa.missnature.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.missnature.dao.UserDAO;
import in.fssa.missnature.exception.PersistanceException;
import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.exception.ValidationException;
import in.fssa.missnature.logger.Logger;
import in.fssa.missnature.model.User;
import in.fssa.missnature.service.UserService;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		UserService us = new UserService();
		UserDAO userDAO = new UserDAO();
		User user;
		try {
			user = us.findUserByEmail(email); 
			HttpSession session = request.getSession();
			session.setAttribute("loggedInEmail", user);
			Logger.info("Success");
			Logger.info(user);
			userDAO.userLogin(email, password);
			response.sendRedirect(request.getContextPath()+"/index");
		}
		catch(PersistanceException | IOException | SQLException | ServiceException | ValidationException e) {
			String errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage); 
			request.getRequestDispatcher("sign_in.jsp").forward(request, response);
		}
	}
}