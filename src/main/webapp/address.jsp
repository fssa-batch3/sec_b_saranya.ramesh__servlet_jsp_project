<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.model.Product"%>
<%@page import="in.fssa.missnature.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../assets/css/header.css">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
.body {
	margin: 100px 100px 100px 200px;
	max-width: 600px;
}

.checkout {
	margin-bottom: 50px;
}

.billing-details {
	padding-bottom: 15px;
}

label {
	font-family: 'Alkatra', cursive;
	margin: 10px 0 10px 0;
}

input {
	width: 500px;
	height: 35px;
}

.field {
	margin: 10px 0;
}

#button {
	margin-top: 15px;
	padding: 12px;
	border: none;
	border-radius: 3px;
	background-color: #263e3e;
	color: white;
	width: 160px;
	font-weight: 700;
}

#order_button {
	margin-top: 15px;
	padding: 12px;
	border: none;
	border-radius: 3px;
	background-color: #263e3e;
	color: white;
	width: 360px;
	font-weight: 700;
}

.payment_details {
	margin-top: 40px;
	padding-bottom: 15px;
}

.row {
	display: flex;
}

#expyear {
	width: 150px;
	margin-right: 20px;
}

#cvv {
	width: 150px;
}

#vehicle1 {
	width: 15px;
	margin-top: 20px;
}

.cod {
	margin: 10px;
	margin-top: -10px;
	font-size: 20px;
}

.order {
	display: flex;
	padding: 20px 0px;
	flex-direction: row;
	justify-content: space-between;
	font-family: 'Alkatra', cursive;
}

.order_box {
	border-style: groove;
	max-width: 700px;
	width: 400px;
	padding: 15px;
	margin-top: 170px;
	max-height: 400px;
}

.product {
	margin-top: 15px;
}

.checkout {
	display: flex;
}

#qty {
	width: 35px;
	height: 25px;
}

.prod {
	display: flex;
	justify-content: space-between;
}

.prod p {
	font-family: 'Alkatra', cursive;
}

.qty-price {
	display: flex;
	margin-right: 30px;
}

.quantity {
	margin-top: 10px;
}

.price {
	margin: 10px -30px 0px 10px;
}

.price p {
	margin-left: 15px;
}

.hr {
	margin-top: 10px;
}
</style>
<body>

	<jsp:include page="header.jsp" />

<%
Product productDetail = (Product) request.getAttribute("productdetail");
%>
<% User user = (User) session.getAttribute("loggedInEmail");%>

	<form action="<%=request.getContextPath()%>/product/order"
		method="post">

		<input type="hidden" name="productId" value="<%=productDetail.getId()%>" /> 
		<input type="hidden" name="prodName" value="<%=productDetail.getName()%>" /> 
		<input type="hidden" name="price" value="<%=productDetail.getPrice()%>" />
		<input type="hidden" name="weight" value="<%=productDetail.getWeight()%>"/>
		<input type="hidden" name="quantityunit" value ="<%=productDetail.getQuantityUnit()%>"/>
		<input type="hidden" name="image" value="<%=productDetail.getImage()%>"/>
		
		<div class="checkout">
			<div class="body">
				<h1 class="checkout">Checkout</h1>

				<h3 class="billing-details">Billing Details</h3>
				<hr>
				<div class="field">
					<label>Name*</label><br> <input type="text" name="name"
						value="<%= user.getName()%>" />
				</div>
				<div class="field">
					<label>Email*</label><br> <input type="text"
						value="<%= user.getEmail()%>" />
				</div>
				<div class="field">
					<label>Mobile Number*</label><br> <input type="number"
						value="<%= user.getMobileNumber()%>" />
				</div>
				<div class="field">
					<label>Address*</label><br>
					<textarea rows="5" cols="66" name="deliveryAddress" required><%= user.getAddress() != null ? user.getAddress() : ""%></textarea>
				</div>

				<h3 class="payment_details">Payment Details</h3>
				<hr>
				<div class="field">
					<label for="fname">Accepted Cards</label>
					<div class="icon-container">
						<i class="fa fa-cc-visa" style="color: navy;"></i> <i
							class="fa fa-cc-amex" style="color: blue;"></i> <i
							class="fa fa-cc-mastercard" style="color: red;"></i> <i
							class="fa fa-cc-discover" style="color: orange;"></i>
					</div>
				</div>
				<div class="field">
					<label for="cname">Name on Card</label><br> <input type="text"
						id="cname" name="cardname">
				</div>
				<div class="field">
					<label for="ccnum">Credit card number</label><br> <input
						type="text" id="ccnum" name="cardnumber">
				</div>
				<div class="field">
					<label for="expmonth">Exp Month</label><br> <input type="text"
						id="expmonth" name="expmonth">
				</div>
				<div class="row">
					<div class="field">
						<label for="expyear">Exp Year</label><br> <input type="text"
							id="expyear" name="expyear">
					</div>
					<div class="field">
						<label for="cvv">CVV</label> <br> <input type="text" id="cvv"
							name="cvv">
					</div>
				</div>

				<input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
				<label class="cod">cash on delivery</label>
			</div>

			<div class="order_box">
				<h3 class="my_order">Your Order</h3>
				<div class="order">
					<p>Products</p>
					<p>subtotal</p>
				</div>
				<hr>
				<div class="prod">
					<div>
						<p class="product"><%=productDetail.getName()%></p>
					</div>
					<div class="qty-price">
						<div class="quantity">
						    <label>Qty</label>
						    <input name="quantity" id="qty" type="number" value="1" min="1" max="10" required="true" oninput="updateTotalAmount()" />
						</div>


						<div class="price">
							<p>&#8377;<%=productDetail.getPrice()%></p>
						</div>
					</div>
				</div>
				<hr class="hr">
				<div class="order">
					<p>Shipping</p>
					<p>&#8377; 70</p>
				</div>

				<div class="order">
				    <p>Total</p>
				    <p id="totalAmount">&#8377;<%= productDetail.getPrice() + 70 %></p>
				</div>

				<button type="submit" id="order_button">Place Order</button>
			</div>
		</div>
	</form>
<script type="text/javascript">
function updateTotalAmount() {
    const inputElement = document.getElementById("qty");
    let quantity = parseInt(inputElement.value);

    // Check if quantity is a valid integer
    if (isNaN(quantity) || quantity < 1) {
        quantity = 1; // Set a default value of 1 if not a valid integer
    } else if (quantity > 10) {
        quantity = 10;
    }

    inputElement.value = quantity;

    const productPrice = <%= productDetail.getPrice() %>;

    // Calculate the total amount
    const totalAmount = quantity * productPrice + 70;
    
    document.getElementById("totalAmount").innerHTML = "&#8377;" + totalAmount;
}

</script>

</body>
</html>