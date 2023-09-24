package in.fssa.missnature.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.missnature.exception.PersistanceException;
import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.logger.Logger;
import in.fssa.missnature.service.OrderService;

/**
 * Servlet implementation class CancelOrder
 */
@WebServlet("/cancel_order")
public class CancelOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String orderId = request.getParameter("id");
		
		OrderService os = new OrderService();
		try {
			os.cancelOrder(Integer.parseInt(orderId));
			RequestDispatcher rd = request.getRequestDispatcher("/order/list");
			rd.forward(request, response);
		} catch(ServiceException | NumberFormatException e) {
			Logger.info(e);
			e.printStackTrace();
			
		}
	}

	

}
