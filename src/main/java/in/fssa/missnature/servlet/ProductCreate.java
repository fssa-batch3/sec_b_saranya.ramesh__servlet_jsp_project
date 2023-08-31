package in.fssa.missnature.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import in.fssa.missnature.model.Product;
import in.fssa.missnature.model.Product.QuantityUnit;
import in.fssa.missnature.service.ProductService;

/**
 * Servlet implementation class ProductCreate
 */
@WebServlet("/Product/Create")
public class ProductCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		Product product = new Product();
		
		String name = request.getParameter("Productname");
		String description = request.getParameter("description");
		String ingredients = request.getParameter("Ingredients");
		String benefits = request.getParameter("Benefits");
		String howToUse = request.getParameter("Howtouse");
		int weight = Integer.parseInt(request.getParameter("weight"));
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		int price = Integer.parseInt(request.getParameter("price"));
		String quantityUnit = request.getParameter("quantityUnit");
		String shelfLife = request.getParameter("ShelfLife");
		
		product.setName(name);
		product.setDescription(description);
		product.setIngredients(ingredients);
		product.setHowToUse(howToUse);
		product.setWeight(weight);
		product.setCategoryId(categoryId);
		product.setQuantityUnit(QuantityUnit.valueOf(quantityUnit));
		product.setPrice(price);
		product.setBenefits(benefits);
		product.setShelfLife(shelfLife);
		
		ProductService prodService = new ProductService();
		
		try {
			prodService.createProduct(product);
			response.sendRedirect("list_all_products");
		}
		catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Invalid data");
		}

	}
}
