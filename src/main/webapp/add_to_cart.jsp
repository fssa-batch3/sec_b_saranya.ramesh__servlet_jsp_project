
<%@page import="in.fssa.missnature.model.User"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="./assets/css/add_to_cart.css" />
<link rel="stylesheet" href="./assets/css/header.css" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,700;1,600&display=swap"
	rel="stylesheet">
<title>Add to cart</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="orders">
		<h1>My Cart</h1>
		<table aria-label="Create a Heading">
			<thead>
				<tr>
					<th>S.NO</th>
					<th>Products</th>
					<th>Weight</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Subtotal</th>
					<th>Remove</th>
				</tr>
			</thead>
			<tbody id="table_body">


			</tbody>
		</table>
	</div>


	<script type="text/javascript">
    
    <%HttpSession httpSession = request.getSession(false);%>
<%User user = (User) httpSession.getAttribute("loggedInEmail");%>
let userunique = <%=user.getId()%>
console.log(userunique);

let cart_id = JSON.parse(localStorage.getItem("Cart"));
console.log(cart_id);

for (let i = 0; i < cart_id.length; i++) {
  const cartprod = ""+
  "<tr>" +
  "<td>" + (i + 1) + ".</td>" +
  "<td><img src='" + cart_id[i].Image + "' width='150px' height='130px' alt='" + cart_id[i].Name + "'></td>" +
  "<td>" + cart_id[i].Name + " - " + cart_id[i].Weight + cart_id[i].QuantityUnit + "</td>" +
  "<td>" + cart_id[i].Price + "</td>" +
  "<td>" + cart_id[i].Quantity + "</td>" +
  "<td>" + cart_id[i].Price + "</td>" +
  "<td><i class='remove fa fa-times-circle' data-remove_id='" + cart_id[i].cartId + "' style='font-size:24px'></i></td>" +
"</tr>"

;
  console.log(cartprod);
  document.querySelector("#table_body").insertAdjacentHTML("afterbegin", cartprod);
}

 // below the code for delete from add to cart

      let bin = document.querySelectorAll(".remove");

      bin.forEach(data => {
        data.addEventListener("click", function quantity() {
          const removebtn = this.dataset.remove_id;

          function find_remove(e) {
            return e.cartId == removebtn;
          }
          const cart_product = JSON.parse(localStorage.getItem("Cart"));
          const cart_index = cart_product.findIndex(find_remove); // Use find instead of findIndex to get the object
          console.log(cart_index);

          cart_product.splice(cart_index, 1);

          localStorage.setItem("Cart", JSON.stringify(cart_product));
          window.location.reload();
        });
      });

    </script>

</body>
</html>