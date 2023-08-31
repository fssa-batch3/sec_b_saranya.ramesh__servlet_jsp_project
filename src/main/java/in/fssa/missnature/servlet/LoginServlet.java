package in.fssa.missnature.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.missnature.model.Product;
import in.fssa.missnature.service.ProductService;

/**
 * Servlet implementation class LoginServlet
 */

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */ 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		    ProductService productService = new ProductService();
		    Set<Product> products;
		    try {
		        products = productService.listAllProduct();
		        PrintWriter out = response.getWriter();
		        out.println(products);
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
}
