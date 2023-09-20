<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="./assets/css/header.css">
  <link rel="stylesheet" href="./assets/css/address.css">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <linkhref="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;600&family=Poppins:ital,wght@0,400;1,300&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
 
</head>

<body>
<jsp:include page="header.jsp" />

  <div class="row">
    <div class="col-75">
      <div class="container">


        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York">

            <div class="row2">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Pincode</label>
                <input type="text" id="pincode" name="pincode" placeholder="600063">
              </div>
            </div>
            <button id="btn" type="submit" onclick="openpopup()">Place Order</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="container2">
  
    <div class="popup" id="popup">
      <img src="./assets/images/tick.png">
      <h3>Thank you!</h3>
      <p>Successfully orederd. Thank You for ordering in our website!!</p>
      <a href="/pages/my_order.html"><button type="button" onclick="closepopup()">View your
          order</button></a>
    </div>
  </div>
  <script>
    let popup = document.getElementById("popup");

    function openpopup() {
      popup.classList.add("open-popup");
    }
    function closepopup() {
      popup.classList.remove("open-popup");
    }

    let user = JSON.parse(localStorage.getItem("users"));
    let active_user = JSON.parse(localStorage.getItem("unique_id"))
    let button = document.getElementById("btn");

    let cart_id = JSON.parse(localStorage.getItem("Cart"));
    const find_user = cart_id.filter((e) => e.userId === active_user);
    const productList = JSON.parse(localStorage.getItem("products")) || [];

    const cart_list = find_user.map((data) =>
      productList.find((product) => product.productid === data.ProdId));
    // console.log(cart_list)

    button.addEventListener("click", order)
    function order() {
      const myOrder = JSON.parse(localStorage.getItem("myOrders")) ?? [];

      for (let i = 0; i < cart_list.length; i++) {

        myOrder.push({
          "prodquantity": find_user[i].quantity,
          "prodimg": cart_list[i].prodimg,
          "prodname": cart_list[i].prodname,
          "prodweight": cart_list[i].weight,
          "prodweightcty": cart_list[i].weigthCtgry,
          "userId": find_user[i].userId,
        })
      }
      localStorage.setItem("myOrders", JSON.stringify(myOrder));
    }

    function address_data(e) {
      return e.email == active_user;
    }
    
    const useraddress = user.find(address_data)

    document.getElementById("fname").value = useraddress.name;
    document.getElementById("email").value = useraddress.email;
    document.getElementById("adr").value = useraddress.address;
    document.getElementById("city").value = useraddress.City;
    document.getElementById("state").value = useraddress.state;
    document.getElementById("pincode").value = useraddress.pincode;

    document.getElementById("btn").addEventListener("click", () => {

      let all_cart = JSON.parse(localStorage.getItem("Cart"));
      let user_1 = all_cart.filter((e) => e.userId !== active_user);
      console.log(user_1);

      for (let j = 0; j < all_cart.length; j++) {
        if (all_cart[j]["useremail"] == active_user && all_cart[j]["productId"] == all_cart[j]["productId"]) {
          all_cart.splice(i, 1);
          localStorage.setItem("Cart", JSON.stringify(all_cart));
          location.reload();
        }
      }
      
      localStorage.setItem("Cart", JSON.stringify(user_1));
    })

  </script>
</body>

</html>