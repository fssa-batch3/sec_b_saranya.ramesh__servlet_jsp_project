<%@page import="in.fssa.missnature.model.Product"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Product List</title>

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


.header-img img {
    width: 16%;
}

.header-img {
    margin-left: 200px;
   
} 
.prod_name{
    margin:100px 0px 30px 100px;
    font-style: normal;
    font-family: 'Times New Roman', Times, serif;
    font-size: xx-large;
}
.navigation{
    margin:0px 100px;
    font-size: normal;
}
.all_products{
    display:flex;
    flex-direction: row;
    flex-wrap: wrap;
    margin:90px;
    max-width: 1400px;

}
.Prod_card {
    /* margin-right: 60px; */
    max-width:fit-content;
    align-items: center;
    padding: 10px;
    margin-bottom: 50px;
 
}
.Prod_card a img{
    width:300px;
    height:300px;
}

.Prod_card a p {
    margin-top: 18px;
    margin-bottom: 12px;
    font-weight: 700;
    font-size: 21px;
    color: #263e3e;
}

.Prod_card h5 {
   
    font-size: 17px;
    margin-bottom: 12px;
}

.Prod_card h3  {
    margin-right: 18px;
    font-size: 19px;
   
}

.Prod_card h3 {
    margin-top: 12px;
    font-size: 19px;
}

.Prod_card a button {
  
    margin-top: 15px;
    padding: 12px;
    border: none;
    border-radius: 6px;
    background-color: #263e3e;
    color: white;
    width: 160px;
    font-weight: 700;
}
.row{
    display: flex;
    margin-top: 70px;
    margin-bottom: 40px;
}
</style>
</head>
<body>
	<%
	ProductService productList = new ProductService();
	%>
	<%
Set<Product> listProducts = (Set<Product>) request.getAttribute("productListByCate");
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
         <a href="/product/list?id=1">Face care</a>
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
 <h2 class="prod_name">Products</h2>
        <p class="navigation">Home/ Products</p>

        
		
		<section class="all_products">
		<%
		for (Product products : listProducts) {
		%>
		
		<div class="Prod_card">
                <a href=""><img src="https://missnatura.in/wp-content/uploads/2022/04/ANTI-ACNE-SERUM.jpg" alt="product_img"/></a>
                <a href="">
                    <p><%=products.getName()%></p>
                </a>
                <div class="icons">
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <h3>
                   <%=products.getPrice()%>
                </h3>
                <a href="product/detail?id=<%=products.getId()%>"><button>View Details</button></a>
            </div>
		<%
		}
		%>
		</section>
		
</body>
</html>
