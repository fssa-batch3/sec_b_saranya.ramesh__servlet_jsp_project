<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <link rel="stylesheet" href="./assets/css/add_to_cart.css"/>
   <link rel="stylesheet" href="./assets/css/header.css"/> 

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,700;1,600&display=swap" rel="stylesheet">
  <title>Add to cart</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">

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

    <section class="cart-amt">
<h2>Cart Total</h2>
        <hr>
        <div class="cart-total">
          <div>
            <p>Subtotal</p>
            <p>Shipping</p>
            <p>Total</p>
          </div>
          <div>
            <p id="subtotal">&#8377; 120.00</p>
            <p>&#8377;70.00</p>
            <p>&#8377;190.00</p>
          </div>
        </div>
        <a href="./address.html"><button class="checkout">Checkout</button></a>
    </section>
   
    <script>

      let userunique = JSON.parse(localStorage.getItem("unique_id"));
      const order_items = JSON.parse(localStorage.getItem("products"));
      let cart_id = JSON.parse(localStorage.getItem("Cart"));
      const find_user = cart_id.filter((e) => e.userId === userunique);
      console.log(find_user);

      const productList = JSON.parse(localStorage.getItem("products")) ?? [];

      const cart_list = find_user.map((data) =>
        productList.find((product) => product.productid === data.ProdId));

      // ----------------------- Price incerment ----------------------- //
      let productPrice = 0;
      let totalprice = 0;
      let cart_product = JSON.parse(localStorage.getItem("Cart")) ?? [];
      
      for (let i = 0; i < find_user.length; i++) {
        productPrice = find_user[i]["price"] *( find_user[i]["quantity"]);
        totalprice += productPrice;
   
        const cartprod =
          `
            <tr>
              <div class="single_prod">
                <td>1.</td>
                <td><img src="${cart_list[i]['prodimg']}"  width="150px"
                  height="130px"
                  alt="Rosemery leaves"></td>
                  <td>${cart_list[i]['prodname']} - ${cart_list[i]['weight']}${cart_list[i]['weigthCtgry']}</td>
                
                <td>&#8377; ${cart_list[i]['prodrange']}.00</td>
                <td>
                  <div class="inc-dec-button">
                    <button class="qty-btn">
                    <span class="minus">
                        <img src="/assets/img/minus_img-removebg-preview.png" class="minus_1" alt="minus symbol" data-btn1_id=${find_user[i]["cartId"]}>
                    </span>
                        <span class="num"> ${find_user[i]['quantity']}</span>
                        <span class="plus"><img src="/assets/img/plus_img-removebg-preview.png" class="plus_1" alt="plus symbol" data-btn2_id=${find_user[i]["cartId"]}></span>
                    </button>
                </div>
                </td>
                <td id="totalPrice">&#8377; ${productPrice}</td>
                <td><i class="remove fa fa-times-circle"   data-remove_id=${find_user[i]["cartId"]}  style="font-size:24px"></i></td>
                </div>
            </tr> `
        
        document.querySelector("#table_body").insertAdjacentHTML("beforeend", cartprod);
      }

      let cartcheckout = `
    <h2>Cart Total</h2>
        <hr>
        <div class="cart-total">
          <div>
            <p>Subtotal</p>
            <p>Shipping</p>
            <p>Total</p>
          </div>
          <div>
            <p id="subtotal">&#8377; ${totalprice}</p>
            <p>&#8377;70</p>
            <p>&#8377;${totalprice + 70}</p>
          </div>
        </div>
        <a href="./address.html"><button class="checkout">Checkout</button></a>
    `
      document.querySelector(".cart-amt").insertAdjacentHTML("afterbegin", cartcheckout);


      let increment = document.querySelectorAll(".plus_1");
      // Retrieve find_user array from localStorage

      increment.forEach(e => {
        e.addEventListener("click", function quantity() {
          const parent = this.closest(".inc-dec-button");
          const num = parent.querySelector(".qty-btn").querySelector(".num");
          let n = parseInt(num.textContent);
          if (n < 30) {
            n += 1;
          }

          num.textContent = n;
          const idButton = this.dataset.btn2_id;

          function find_cart(e) {
            return e.cartId == idButton;
          }

          const cart_quantity = cart_product.find(find_cart); // Use find instead of findIndex to get the object

          if (cart_quantity) {
            cart_quantity.quantity = n.toString(); // Update the quantity property of the object
          }

          localStorage.setItem("Cart", JSON.stringify(cart_product));
          window.location.reload();// Store the updated find_user array in localStorage
        });
      });


      let decrement = document.querySelectorAll(".minus_1");
      decrement.forEach(value => {
        value.addEventListener("click", function () {
          const parent = this.closest(".inc-dec-button");
          const num = parent.querySelector(".qty-btn").querySelector(".num");
          let n = parseInt(num.textContent);
          if (n > 1) {
            n -= 1;
          }
          num.textContent = n;
     
          const idButton = this.dataset.btn1_id;
          console.log(idButton);
          const cart_product = JSON.parse(localStorage.getItem("Cart"));
          console.log(cart_product);
          function find_cart(e) {
            return e.cartId == idButton;
          }
          const cart_quantity = cart_product.find(find_cart);
          console.log(cart_quantity);
          if (cart_quantity) {
            cart_quantity.quantity = n.toString();
            localStorage.setItem("Cart", JSON.stringify(cart_product));
            // location.reload();
            window.location.reload();// Store the updated find_user array in localStorage

          }
        })
      });

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
</body>
</html>
