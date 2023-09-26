package in.fssa.missnature.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.missnature.exception.PersistanceException;
import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.logger.Logger;
import in.fssa.missnature.model.Orders;
import in.fssa.missnature.model.User;
import in.fssa.missnature.service.OrderService;

/**
 * Servlet implementation class MyOrder
 */
@WebServlet("/order/list")
public class MyOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInEmail");
		
		OrderService orderService = new OrderService();
		
		try {
			List<Orders> myOrder = orderService.listOrdersById(user.getId());
			Logger.info(myOrder);
			request.setAttribute("myOrder", myOrder);
			RequestDispatcher rd = request.getRequestDispatcher("/order.jsp"); 
			rd.forward(request, response);
		}
		catch(ServletException | ServiceException e) {
			e.printStackTrace();
			
		}
	}

}
