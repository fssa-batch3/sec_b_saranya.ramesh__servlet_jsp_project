package in.fssa.missnature.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class EditProfile
 */
@WebServlet("/updateProfile")
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");
		String state = request.getParameter("state");
		User user = new User();

		user.setName(name);
		user.setAddress(address);
		user.setCity(city);
		user.setState(state);
		user.setPincode(pincode);
		user.setEmail(email);
		Logger.info("user Details"); 
		Logger.info(user); 

		UserService us = new UserService();
		try {
			us.updateUser(user);
			response.sendRedirect(request.getContextPath()+"/profile");
//			RequestDispatcher rd = request.getRequestDispatcher("/profile");
//			rd.forward(request, response);

		} catch (ServiceException e) {
			e.printStackTrace();
			Logger.info(e.getMessage());
		}
	}

}
