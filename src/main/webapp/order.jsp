<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.model.Orders"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/header.css">
<title>My order</title>
<style>
.header-img img {
	width: 16%;
}

.header-img {
	margin-left: 200px;
}

.head {
	margin: 80px 0px 0px 100px;
}

.single_prod {
	display: flex;
	margin-top: 20px;
}

.prod_info {
	border-style: groove;
	padding: 30px 50px 20px 50px;
	margin: 80px 100px;
}

.prod_info h2 {
	margin: -10px 0px 10px;
	/* font-family:'Montserrat', sans-serif;  */
}

.prof_img {
	justify-content: center;
	align-items: center;
}

.status {
	margin: -2px 50px 0px 50px;
	font-family: 'Alkatra', cursive;
}

.status p {
	margin: 10px 0px;
}

.status_img {
	position: relative;
	top: 15px;
}

.orderId {
	margin-bottom: 5px;
}

.sts_cancel {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}

button {
	padding: 10px 18px;
	background: #263e3e;
	color: white;
	font-weight: 700;
}

.popup {
	width: 400px;
	background: #efefef;
	border-radius: 6px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%) scale(0.1);
	text-align: center;
	padding: 0px 30px 30px;
	color: #333;
	visibility: hidden;
	transition: transform 0.4s, top 0.4s;
}

.open-popup {
	visibility: visible;
	top: 50%;
	transform: translate(-50%, -50%) scale(1);
}

.popup img {
	width: 100px;
	margin-top: -50px;
	border-radius: 50%;
	box-shadow: 0 2px 5px(0 0 0 0.2px);
}

.popup h2 {
	font-size: 38px;
	font-weight: 500;
	margin: 30px 0px 10px;
}

.popup p {
	margin-top: 15px;
	font-family: 'Poppins', sans-serif;
}

.popup button {
	width: 100%;
	margin-top: 40px;
	padding: 10px 0;
	background: #263e3e;
	color: #fff;
	border: 0;
	outline: none;
	font-size: 18px;
	border-radius: 4px;
	cursor: pointer;
	box-shadow: 0 5px 5px(0 0 0 0.2px);
}
</style>

</head>
<body>
	<jsp:include page="header.jsp" />

	<% List<Orders> myOrder = (List<Orders>)request.getAttribute("myOrder"); %>

	<h1 class="head">My Orders</h1>
	<% for(Orders order : myOrder) {
	%>
	<div class="whole_product">
		<div class="prod_info">
			<div class="sts_cancel">
				<%boolean id =  order.isActive();%>
				<h2>
					Status:
					<%
					if (id == true) {
					%>
					Order Placed Successfully
					<%} else { %>
					Order Cancelled
					<%
					}
					%>

				</h2>
				<%
					if (id == true) {
					%>
				<a
					href="<%=request.getContextPath()%>/cancel_order?id=<%=order.getId() %>"><button
						type="submit">Cancel Order</button></a>
				<%
					}
					%>
			</div>
			<p class="orderId">
				<b>OrderId : </b>
				<%=order.getId() %>
			</p>
			<p>
				<b>To : </b><%=order.getUserName() %>,
				<%=order.getAddress()%></p>
			<hr style="margin-top: 10px;">
			<div class="single_prod">
				<div class="prof_img">
					<img src="<%=order.getProductImage() %>" width="150px"
						height="160px" alt="<%=order.getProductName() %>" />
				</div>
				<div class="status">
					<p><%=order.getProductName() %>
						-
						<%=order.getProductWeight() %><%=order.getQuantityUnit()%></p>
					<p>
						Qty -
						<%=order.getQuantity()%></p>
					<P>Shipping - &#8377; 70</P>
					<input type="hidden" value="<%=order.getPrice() %>" />

					<p>
						Total Price - &#8377;<%= order.getQuantity() * order.getPrice() + 70 %></p>
					<p>
						Date and Time-
						<%=order.getDate()%></p>
				</div>
			</div>
		</div>
	</div>
	
		<% 
}
%>

<%-- <div class="container2">

    <div class="popup" id="popup">
      <img src="../assets/images/question_mark.jpg">
      <h3>Are you sure</h3>
      <p>Do you want to cancel your order? </p>
      <a href="<%=request.getContextPath()%>/cancel_order?id=<%=order.getId() %>"><button type="button" onclick="closepopup()">Cancel
		Order</button></a>
    </div>
</div>  --%>


	<script>
    let popup = document.getElementById("popup");

    function openpopup() {
      popup.classList.add("open-popup");
    }
    function closepopup() {
      popup.classList.remove("open-popup");
    }
</script>

</body>
</html>