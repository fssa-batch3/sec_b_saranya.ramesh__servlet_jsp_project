package in.fssa.missnature.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.missnature.exception.ServiceException;
import in.fssa.missnature.logger.Logger;
import in.fssa.missnature.model.Orders;
import in.fssa.missnature.model.Orders.QuantityUnit;
import in.fssa.missnature.model.User;
import in.fssa.missnature.service.OrderService;

/**
 * Servlet implementation class Order
 */
@WebServlet("/product/order")
public class Order extends HttpServlet {
    private static final long serialVersionUID = 1L;


    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	String proudctId = request.getParameter("productId");
        String deliveryAddress = request.getParameter("deliveryAddress");
        String quantity = request.getParameter("quantity");
        String productName = request.getParameter("prodName");
        String price = request.getParameter("price");
        String image = request.getParameter("image");
        String weight = request.getParameter("weight");
        String quantityUnit = request.getParameter("quantityunit");
        Logger.info(quantityUnit);
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInEmail");
        
        Orders order = new Orders();
        order.setProductId(Integer.parseInt(proudctId));
        order.setAddress(deliveryAddress);
        order.setUserId(user.getId());
        order.setPrice(Integer.parseInt(price));
        order.setProductName(productName);
        order.setQuantity(Integer.parseInt(quantity));
        order.setProductImage(image);
        order.setProductWeight(Integer.parseInt(weight));
        order.setQuantityUnit(QuantityUnit.valueOf(quantityUnit));
        order.setUserName(user.getName());

        OrderService orderService = new OrderService();

        try {
        	orderService.createOrder(order);
            response.sendRedirect(request.getContextPath()+"/order_conformation.jsp");
           
        } catch (ServiceException e) {
            Logger.info(e);
        }
    }
}
