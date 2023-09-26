<%@page import="in.fssa.missnature.model.User"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.service.ProductService"%>
<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,300&family=Dancing+Script:wght@400;600&family=Poppins:ital,wght@0,400;1,300&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
<link rel="stylesheet" href="../assets/css/product_detail.css"/> 
<link rel="stylesheet" href="../assets/css/header.css"/> 
<title>Product Detail</title>

</head>
<body>

<%
Product productDetail = (Product) request.getAttribute("product");
%>
<%-- <%
int id = (int)request.getAttribute("userId");
%> --%>
<jsp:include page="header.jsp" />
 <section class="main-img">
<div class="seperate">
            <div>
                <img class="ban-img" src="<%=productDetail.getImage()%>">
            </div>
            <a href="#"><i class="Wishlist far fa-heart" style='font-size:36px; color:#263e3e'></i></a>
            <div class="prodDetail">
                <h2> <%=productDetail.getName()%></h2>
                <p class="amt"> <b>&#8377; <%=productDetail.getPrice()%></b> </p>
                <div>
                    <h3>Description</h3>
                        <div class="container">
                            <p class="info"><%=productDetail.getDescription()%></p>
                        </div>
                </div>
                <h3 class="quantity">Weight - <%=productDetail.getWeight()%><%=productDetail.getQuantityUnit()%></h3>
                
              <%-- <button type="submit" id="add-to-cart" data-prodId="<%=productDetail.getId()%>">Add To Cart</button> --%>
              <a href="address?id=<%=productDetail.getId()%>"><button type="submit" class="add-to-cart">Buy Now</button></a>    
            </div>
        </div>
    </section>
    <section class="description">
        <div>
            <button class="accordion"><i class="arrow_down"></i>Weight</button>
            <div class="drpdown"> 
                <p><%=productDetail.getWeight()%> <%=productDetail.getQuantityUnit()%></p>
            </div>
        </div>
        <hr class="bottom-line">
        <div>
            <button class="accordion"><i class="arrow_down"></i>Ingredients</button>
            <div class="drpdown"> 
                <p><%=productDetail.getIngredients()%></p>
            </div>
        </div>
        <hr class="bottom-line">
        <div>
            <button class="accordion"><i class="arrow_down"></i>Benefits</button>
            <div class="drpdown"> 
                <p><%=productDetail.getBenefits()%></p>
            </div>
        </div>
        <hr class="bottom-line">
        <div>
            <button class="accordion"><i class="arrow_down"></i>How to use</button>
            <div class="drpdown"> 
                <p><%=productDetail.getHowToUse()%></p>
            </div>
        </div>
        <hr class="bottom-line">
        <div>
            <button class="accordion"><i class="arrow_down"></i>Shelf Life</button>
            <div class="drpdown"> 
                <p><%=productDetail.getShelfLife()%></p>
            </div>
        </div>
        <hr class="bottom-line">
    </section>
    <hr>
    <footer>
        <div class="row">
            <div class="foot_logo">
                <img src="https://missnatura.in/wp-content/uploads/2022/04/MissNatura_logo.png" alt="website logo">
            </div>
            <div class="Quick_links">
                <h2>Quick Links</h2>
                <ul>
                    <a href="">
                        <li>Shop</li>
                    </a>
                    <a href="">
                        <li>About</li>
                    </a>
                    <a href="">
                        <li>contact</li>
                    </a>
                </ul>
            </div>
            <div class="Legal">
                <h2>Legal</h2>
                <ul>
                    <a href="">
                        <li>Shipping Policy</li>
                    </a>
                    <a href="">
                        <li>Return and Refund</li>
                    </a>
                    <a href="">
                        <li>Privacy Policy</li>
                    </a>
                </ul>
            </div>
            <div class="contact_us">
                <h2>Contact us</h2>
                <div class="social_icons">
                    <a href=""><i class="fa-brands fa-facebook"></i></a>
                    <a href=""><i class="fa-brands fa-instagram"></i></a>
                    <a href=""><i class="fa-brands fa-whatsapp"></i></a>
                    <a href=""><i class="fa-brands fa-twitter"></i></a>
                </div>

            </div>
        </div>
    </footer>
    
    <script type="text/javascript">
    
    //Below the code for accordion
    
    const acc = document.getElementsByClassName("accordion");
    let i;

    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function () {
            this.classList.toggle("active");
            const drpdown = this.nextElementSibling;
            if (drpdown.style.display === "block") {
                drpdown.style.display = "none";
                drpdown.style.flex;2
            } else {
                drpdown.style.display = "block";
            }
        });
    }
    
    
    
   // Below the  code for add to cart
    <%-- 
    document.getElementById("add-to-cart").addEventListener("click", cart);

        
        function cart() {
        	
        	<% HttpSession httpSession = request.getSession(false); User sessionCheck =
        		(User) httpSession.getAttribute("loggedInEmail");%>
        		
        	
        	let productId;
            productId =  document.querySelector("button.prodId");
   
            let userunique = <%=sessionCheck.getId()%>
			
        if(userunique>0){
        
            const cart = JSON.parse(localStorage.getItem("Cart")) || [];

            const alreadyexist = cart.length && JSON.parse(localStorage.getItem("Cart")).some((e) =>
                e.ProdId == productId &&
                e.userId == userunique
            );

            if (!alreadyexist) {
            	
            	let image = '<%=productDetail.getImage()%>';
            	let name= '<%=productDetail.getName()%>';
            	let weight= '<%=productDetail.getWeight()%>';
            	let quantityUnit = '<%=productDetail.getQuantityUnit()%>';
            	
                cart.push({
                	"ProdId": <%=productDetail.getId()%>,
                    "userId": userunique,
                    "Price": <%=productDetail.getPrice()%>,
                    "Quantity": 1,
                    "Image" : image,
                    "Name": name,
                    "Weight" : <%=productDetail.getWeight()%>,
                    "QuantityUnit" : quantityUnit,
                    
                    
                })

                localStorage.setItem("Cart", JSON.stringify(cart));
            }
            console.log("Before redirection");
            window.location.href = "<%= request.getContextPath() +"/add_to_cart.jsp"%>";
            console.log("After redirection");
        }
        else{
            alert("SignUp before add to cart");
        }
     } --%>
    </script>
    
</body>
</html>