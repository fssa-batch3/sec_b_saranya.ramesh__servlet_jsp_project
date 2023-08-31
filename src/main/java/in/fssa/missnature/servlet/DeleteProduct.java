package in.fssa.missnature.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.missnature.model.Product;
import in.fssa.missnature.service.ProductService;

/**
 * Servlet implementation class DeleteProduct
 */
@WebServlet("/product/delete")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ProductService ps = new ProductService();
			int id = Integer.parseInt(request.getParameter("id"));
			ps.deleteProduct(id);
			response.sendRedirect(request.getContextPath() +"/list_all_products");
		}
		catch(Exception e) {
			 e.printStackTrace();
		}
	}

}
