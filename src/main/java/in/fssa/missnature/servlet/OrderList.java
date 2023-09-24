package in.fssa.missnature.servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.logger.Logger;
import in.fssa.missnature.model.Orders;
import in.fssa.missnature.service.OrderService;

/**
 * Servlet implementation class OrderList
 */
@WebServlet("/order_list")
public class OrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		OrderService orderService = new OrderService();
		
		try {
			Set<Orders> orders = orderService.listOrders();
			Logger.info(orders);
			request.setAttribute("orders" ,orders);
			RequestDispatcher rd = request.getRequestDispatcher("/order_list.jsp");
			rd.forward(request, response);
			
		}
		catch(ServletException | ServiceException e) {
			e.printStackTrace();
		}
		
	}

	

}
