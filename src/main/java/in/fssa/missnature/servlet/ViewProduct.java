package in.fssa.missnature.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.missnature.model.Product;
import in.fssa.missnature.service.ProductService;

/**
 * Servlet implementation class ViewProduct
 */
@WebServlet("/product/view")
public class ViewProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");		
		
		try {
			Product productDetails = new ProductService().FindProductDetailsByProductId(Integer.parseInt(id));
			request.setAttribute("product", productDetails);
					
			RequestDispatcher rd = request.getRequestDispatcher("/view_product.jsp");
			rd.forward(request, response);

		}
		catch(Exception e) {
		e.printStackTrace();
		}
	}
}
