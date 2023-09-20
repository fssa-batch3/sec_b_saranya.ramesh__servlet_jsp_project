package in.fssa.missnature.servlet;
import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.logger.Logger;
import in.fssa.missnature.model.Product;
import in.fssa.missnature.service.ProductService;

/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ProductService ps = new ProductService();
	
		try {
			Set<Product> product = ps.listAllProduct();
			request.setAttribute("allProducts", product);
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp"); 
			rd.forward(request, response);
//			Logger.info(loggedInEmail);
			
		}
		catch(ServiceException e) {
			e.printStackTrace();
		}
	}
}