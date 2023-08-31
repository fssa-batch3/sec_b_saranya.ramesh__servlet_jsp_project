package in.fssa.missnature.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.missnature.model.Product;
import in.fssa.missnature.model.Product.QuantityUnit;
import in.fssa.missnature.service.ProductService;

/**
 * Servlet implementation class UpdateProduct
 */

@WebServlet("/product/update")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
				
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		int productId = Integer.parseInt(request.getParameter("id"));
		
		Product product = new Product();
		
		System.out.println(product.getName());
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
		product.setId(productId);
		
		ProductService prodService = new ProductService();
		PrintWriter  out = response.getWriter();
				
		try {
			prodService.updateProduct(product);
//			out.println();
			response.sendRedirect(request.getContextPath()+"/list_all_products");
		}
		catch(Exception e) {
			e.printStackTrace();
			out.println(e.getMessage());
			throw new RuntimeException("Updation fails");
		}
	}
}
