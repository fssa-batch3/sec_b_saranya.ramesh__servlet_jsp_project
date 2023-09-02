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

<title>Product Detail</title>
<style type="text/css">

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    color: #263e3e;
}

a {
    text-decoration: none;
}
button{
   cursor: pointer;
}

/* Style the heading  and navigation*/

.nav_1 {
    display: flex;
    flex-direction: row;
    align-items: center;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
    
}
.dropbtn {
    /* background-color: #4CAF50; */
    color:#263e3e ;
    padding-right: 35px;
    font-size: 22px;
    border: none;
    cursor: pointer;
  }
  
  /* The container <div> - needed to position the dropdown content */
  .dropdown {
    position: relative;
    display: inline-block;
  }
  
  /* Dropdown Content (Hidden by Default) */
  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 200px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    font-size: smaller;
  }
  
  /* Links inside the dropdown */
  .dropdown-content a {
    color: black;
    padding: 12px 12px;
    text-decoration: none;
    display: block;
  }
  
  /* Change color of dropdown links on hover */
  .dropdown-content a:hover {background-color: #f1f1f1}
  
  /* Show the dropdown menu on hover */
  .dropdown:hover .dropdown-content {
    display: block;
  }
  

  

.Navigation ul {
    display: flex;
    align-items: center;
    list-style-type: none;
    margin-left: -300px;
    padding: 35px;
    font-size: 22px;
    font-weight: 600;

}

.Navigation ul li a {
    margin-right: 50px;
    color: #263e3e;
    text-decoration: none;
    /* align-content: center; */
}

.Navigation ul li i {
    color: #263e3e;
    font-size: 28px;
}

.header-img img {
    width: 16%;
}

.header-img {
    margin-left: 200px;

}
#logout{
    padding: 10px 18px;
    background: #263e3e;
    color: white;
    font-weight: 700;
}
#button{
    padding: 10px 18px;
    background: #263e3e;
    color: white;
    font-weight: 700;
}
.main-img{
max-width: 1100px;
margin: 100px;
}
.ban-img{
width: 600px;
height:600px;
margin: 60px;
}
.Wishlist{
    position:absolute;
    top: 35%;
    left: 45%;

}
.qty-btn{
    background-color: transparent;
    padding: 5px 20px;
    border-color: #cfcece;
}
.prodDetail{
    margin-top:50px;
}
.prodDetail p{
    margin:10px 0px;
   
}
.inc-dec-button{
    margin:10px 0px;
}
.prodDetail button{
    margin:10px 0px;
}
.seperate{
    justify-content: space-around;
    display:flex;

}
.seperate h2{
    font-family: 'Dancing Script', cursive;
    font-size: 3em;
}
.info{
    font-size: 15px;
    border-style: groove;
    padding: 30px;
    border-radius: 10px;
    /* font-family: 'Dancing Script', 'Courier New', Courier, monospace; */
    font-family: 'Cormorant Garamond', serif;
    font-weight: 900;
    font-size: larger;
}
.amt{
    font-size: 1.5em;
    font-weight: 500;
}
.minus_1{
    width: 20px;
    margin-right: 15px;
}
.num{
    font-size: 23px;
}
.plus_1{
    width:20px;
    margin-left: 15px;
}
.weight{
    background-color: transparent;
    padding: 5px 10px;
    border-color: lightgray;
    border-radius: 5px;
}
.quantity{
    margin: 15px 0;
}
.availabitity p{
    color: #263e3e;
    font-size: 19px;
    font-weight: 800;
}
.lowquantity{
    margin:10px 0px;
}
.availabitity label{
    padding:10px;
}
.add-to-cart{
    margin-top: 20px;
    padding: 15px;
    border: none;
    border-radius: 6px;
    background-color: #263e3e;
    color: white;
    width: 160px;
    font-weight: 700;
}

.accordion {
    /* margin-bottom: 20px; */
    /* color: #444; */
    background-color: unset;
    cursor: pointer;
    padding: 18px;
    border: none;
    text-align: left;
    outline: none;
    font-size: 15px;
    transition: 0.4s;
    width: 600px;
}
.active, .accordion:hover {
    background-color: #ccc; 
  }
hr.bottom-line{
    width:46%;
    color:orange;
}
.drpdown{
   
    padding: 20px 18px 20px;
    display: none;
    background-color:white;
    /* overflow: hidden; */
    max-width: 550px;
}

.arrow_down{
    border: solid rgb(87, 84, 84);
    border-width: 0 3px 3px 0;
    display: inline-block;
    padding: 3px;
    margin-right: 10px;
    transform: rotate(45deg);
    -webkit-transform: rotate(45deg);
}
.description{
    margin: 0px 0px 90px 150px;
    
}.row{
    display: flex;
    margin-top: 70px;
    margin-bottom: 40px;
}
.Quick_links h2{
    margin-left: -200px;
    font-size: 24px;
    font-weight: 900;
}
.Quick_links ul{
    margin-left: -170px;
    margin-top: 20px;
}
.Quick_links ul li{
    margin-top:10px;
    list-style-type: none;
    color: #263e3e;
    font-size: 19px;
    font-weight: 400;
    transition: 03.s;

}
.Legal ul{
    margin-left: 100px;
    margin-top: 20px;
}
.Legal h2{
    margin-left: 120px;
    font-size: 24px;
    font-weight: 900;

}
.Legal ul li{
    margin-top: 10px;
    list-style-type: none;
    font-size:19px ;
    font-weight: 400;
    color: #263e3e;
}
.allprod{
  height: 550px;
  overflow-y: scroll;
}
.allprod::-webkit-scrollbar{
    display:none;
}

.orders{
    position:absolute;
    top:0px;
    right:0px;
    background-color: #fff;
    width: 30%;
    height:100%;
}
.bin i{
    float:right;
    position:relative;
    bottom:38px;
}
.cart-total{
    display:flex;
    padding:10px;
    justify-content: flex-start;
}
.checkout{
    background-color: #263e3e;
    color:white;
    padding: 10px 120px;
}
.foot_logo img{
    width: 18%;
    margin-left:290px;
}
.Quick_links ul li:hover{
    text-decoration: underline;
}
.Legal ul li:hover{
    text-decoration: underline;

}
.contact_us{
    margin-left: 130px;
}
.contact_us h2{
    margin-left: 50px;
     font-size: 24px;
    font-weight: 900;
}
.contact_us  i{
    margin-top: 40px;
    margin-left: 20px;
    font-size: 35px;
    color: black;
}
.social_icons i{
    transition: 0.2s;
}
.fa-facebook:hover{
    color:#3b5998;
}
.fa-instagram:hover{
   color: #c32aa3;
}
.fa-whatsapp:hover{
    color: #25d366;
}
.fa-twitter:hover{
    color: #1da1f2;
}


</style>
</head>
<body>

<%
Product productDetail = (Product) request.getAttribute("product");
System.out.println("Product in JSP: " + productDetail);
%>

<div class="nav_1">
<div class="header-img">
    <img src="https://missnatura.in/wp-content/uploads/2022/04/MissNatura_logo.png" alt="header_logo">
</div>
<div class="Navigation">
    <ul>
        <li> <a href="">Home</a></li>
        <li>
        <div class="dropdown">
        <p class="dropbtn">Shop</p>
        <div class="dropdown-content">
         <a href="product/list?id=1">Face care</a>
         <a href="product/list?id=3">Body care</a>
         <a href="product/list?id=2">Hair care</a>
              </div>
                </div>
        </li>
        <li> <a href="">Kits</a>
        </li>
        <li><a href=""> Contact us</a></li>
        <li><a href="">About us</a> </li>
        <li><a href=""><i class="fa-regular fa-heart"></i></a></li>
        <li><a href=""><i class="fa-solid fa-user"></i></a></li>
        <li><a href=""> <i class="fa-solid fa-cart-shopping"></i></a></li>
        <button id="logout" type="submit">Logout</button>
    </ul>
</div>
</div>
 <section class="main-img">
<div class="seperate">
            <div>
                <img class="ban-img" src="https://missnatura.in/wp-content/uploads/2022/04/ANTI-ACNE-SERUM.jpg">
            </div>
            <a href="#"><i class="Wishlist far fa-heart" style='font-size:36px; color:#263e3e'></i></a>
            <div class="prodDetail">
                <h2> <%=productDetail.getName()%></h2>
                <p class="amt"> <b><%=productDetail.getPrice()%></b> </p>
                <div>
                    <h3>Description</h3>
                        <div class="container">
                            <p class="info"><%=productDetail.getDescription()%></p>
                        </div>
                </div>
                <h3 class="quantity">Weight - <%=productDetail.getWeight()%><%=productDetail.getQuantityUnit()%></h3>
               
              <button class="add-to-cart">Add to cart</button>     
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
    </script>
</body>
</html>