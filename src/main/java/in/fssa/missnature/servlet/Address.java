package in.fssa.missnature.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import in.fssa.missnature.logger.Logger;
import in.fssa.missnature.model.Product;
import in.fssa.missnature.model.User;
import in.fssa.missnature.service.ProductService;

/**
 * Servlet implementation class Address
 */
@WebServlet("/product/address")
public class Address extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		String id = request.getParameter("id");	
		HttpSession httpSession = request.getSession(false);
		User sessionCheck = (User) httpSession.getAttribute("loggedInEmail");
		if (sessionCheck == null) {
			response.sendRedirect(request.getContextPath() + "/sign_in.jsp");
		} else {
		try {
			Product productDetails = (Product) new ProductService().findProductDetailsByProductId(Integer.parseInt(id));
		    request.setAttribute("productdetail", productDetails);
		    RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/address.jsp");
		    rd.forward(request, response);
		} catch (Exception e) {
		    e.printStackTrace();
		}
	}
}
}

