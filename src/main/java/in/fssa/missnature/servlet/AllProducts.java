package in.fssa.missnature.servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.missnature.service.ProductService;
import in.fssa.missnature.model.Product;
/**
 * Servlet implementation class AllProducts
 */
@WebServlet("/product/list")
public class AllProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");	
		ProductService ps = new ProductService();
	try {
		Set<Product> product = ps.findProductDetailByCategoryId(Integer.parseInt(id));
		request.setAttribute("productListByCate", product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/product_list.jsp");
		dispatcher.forward(request, response);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	}

}
