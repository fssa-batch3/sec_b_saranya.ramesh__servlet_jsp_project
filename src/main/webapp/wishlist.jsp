<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/wishlist.css">
    <link rel="stylesheet" href="/assets/css/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <title>Wishlist</title>
</head>
<script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>

<body>
<jsp:include page="header.jsp" />
    <section class="Wishlist">

        <h1>My Wishlist</h1>

        <div class="all_wishlist">
             <div class="Prod_card">
                <a href=""><img src="https://missnatura.in/wp-content/uploads/2023/02/IMG-20230222-WA0003.jpg"
                        alt="product_img"></a>
                <a href="">
                    <p>Dried Rosemery Leaves - 100g</p>
                </a>
                <h5>hair care</h5>
                <div class="icons">                                                                             
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <h3><s>500OFF</s>
                    120.00
                </h3>
                <a href=""><button>Add to Cart</button></a>
            </div>
        </div>

        <button id="remove">Remove all from Wishlist </button>
        <button id="cart">Move all to cart</button>

    </section>
    <script>
        let user_wishlist = JSON.parse(localStorage.getItem("wishlist"));
        let active_user = JSON.parse(localStorage.getItem("unique_id"))

        for (let i = 0; i < user_wishlist.length; i++) {
            if (user_wishlist[i]["useremail"] == active_user) {
                const wishlist = `
                    <div class="product">
                <h3> ${user_wishlist[i]["productname"]}</h3>
                <img src="${user_wishlist[i]["productimage"]}" alt="serum" width="250px" height="250px">
                <p>Rs: ${user_wishlist[i]["productprice"]}</p>
                <button id="add-to-cart">Add to cart</button>
                <img id="bin" src="/assets/img/bin.png" width="25px">
            </div>`
                document.querySelector(".all_wishlist").insertAdjacentHTML("afterbegin", wishlist)

                // below the code for delete the wishlist

                let deletewish = document.getElementById("bin");
                deletewish.addEventListener("click", () => {
                    alert("are you sure you want to delete")
                    for (let j = 0; j < user_wishlist.length; j++) {
                        if (user_wishlist[i]["useremail"] == active_user && user_wishlist[i]["productId"] == user_wishlist[j]["productId"]) {
                            user_wishlist.splice(i, 1);
                            localStorage.setItem("wishlist", JSON.stringify(user_wishlist));
                            location.reload();
                        }
                    }
                })

                // below the code for add the product add to cart

                let userCart = JSON.parse(localStorage.getItem("Cart"));
                
                let Cart = document.getElementById("add-to-cart");
                Cart.addEventListener("click", () => {
                    // console.log("hi");                                        
                    if (userCart.some(e=> e.ProdId === user_wishlist[i].productId)) {
                      alert("Product is already in your cart");
                    }
                    else{
                        let cart = {};
                        cart["ProdId"] = user_wishlist[i]["productId"],
                            cart["userId"] = user_wishlist[i]["useremail"],
                            cart["cartId"] = uuidv4(),
                            cart["price"] = user_wishlist[i]["productprice"],
                            cart["quantity"] = "1"
                        userCart.push(cart)
                        localStorage.setItem("Cart", JSON.stringify(userCart));
                        alert("Added successfully in your cart!!"); 

                        for (let j = 0; j < user_wishlist.length; j++) {
                        if (user_wishlist[i]["useremail"] == active_user && user_wishlist[i]["productId"] == user_wishlist[j]["productId"]) {
                            user_wishlist.splice(i, 1);
                            localStorage.setItem("wishlist", JSON.stringify(user_wishlist));
                            location.reload();
                        }
                    }
                    }
                })
            }   
        } 

            // Below the code for remove the all from wishlist

            let wishlist_id = JSON.parse(localStorage.getItem("wishlist"));
            let productlist = JSON.parse(localStorage.getItem("products"));
            
            // const find_user = wishlist_id.filter((e) => e.useremail === active_user );
            // console.log(find_user)
            let remove = document.getElementById("remove");
            remove.addEventListener("click", () => {

            let current_user =  wishlist_id.filter((e) => e.useremail !== active_user); 
            console.log(current_user);
            let deletewish = document.getElementById("bin");
                deletewish.addEventListener("click", () => {
                    alert("are you sure you want to delete")
                    for (let j = 0; j < user_wishlist.length; j++) {
                        if (user_wishlist[i]["useremail"] == active_user && user_wishlist[i]["productId"] == user_wishlist[j]["productId"]) {
                            user_wishlist.splice(i, 1);
                            localStorage.setItem("wishlist", JSON.stringify(user_wishlist));
                            location.reload();
                        }
                    }
                })
                    localStorage.setItem("wishlist", JSON.stringify(current_user));
                }
            )
    </script>
    <script src="/JS/components/header.js"></script>
</body>
</html>
