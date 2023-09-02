<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.service.ProductService"%>
<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Index</title>
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


.ad_img img {
     width: 100%;
     height: 510px;
 }

 .content_ad {
     position: absolute;
     top: 45%;
     margin-left: 110px;
 }

 .content_ad h1 {
     padding-bottom: 10px;
     font-size: 50px;
     font-weight: 800;
     color: #143939;
 }

 .content_ad p {
     padding: 10px;
     font-size: 23px;
     margin-left: 140px;
     font-weight: 700;
 }

 .content_ad button {
     padding: 10px;
     border: none;
     margin-left: 180px;
     margin-top: 13px;
     border-radius: 6px;
     background-color: rgb(85, 109, 109);
 }

 .content_ad button a {
     color: white;
     font-size: 14px;
     font-weight: 700;
 }

 /*  style the type product img */

 .whole_img {
     display: flex;
     max-width: 70%;
     margin-left: 250px;
     margin-right: auto;
     margin-top: 40px;
 }

 .type_prod h3 {
     text-align: center;
     margin-top: 50px;
     font-size: 33px;
     font-weight: 800;
     color: #7ace7a;

 }

 .prod_img img {
     width: 89%;
     box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
     padding: 40px;
     border-radius: 15px;

 }

 .prod_img {
     background-color: white;
 }

 /* Style the card  */

 .hot_sellers h2 {
     margin-left: 650px;
     margin-top: 80px;
     font-size: 38px;
     color: darkgrey;
     letter-spacing: 1px;
     font-weight: 700;
     margin-bottom: 20px;
 }

 .products_list {
     display: flex;
     align-items: center;
     align-content: space-between;
     flex-wrap: nowrap;
     margin-left: 150px;
     overflow-x: scroll;
     max-width: 1200px;
 }
.products_list::-webkit-scrollbar{
    display:none;
}
 .hot_sellers img {
     width: 340px;
     border-radius: 10px;
}
 .Prod_card {
     margin-right: 60px;

 }

 .Prod_card a p {
     margin-top: 18px;
     margin-bottom: 12px;
     font-weight: 700;
     font-size: 21px;
     color: #263e3e;
     margin-left: 40px;
 }

 .Prod_card h5 {
     margin-left: 120px;
     font-size: 17px;
     margin-bottom: 12px;
 }

 .icons {
     margin-left: 100px;
 }

 .Prod_card h3 s {
     margin-right: 18px;
     font-size: 19px;
     margin-left: 70px;
 }

 .Prod_card h3 {
     margin-top: 12px;
     font-size: 19px;
 }

 .Prod_card a button {
     margin-left: 72px;
     margin-top: 15px;
     padding: 12px;
     border: none;
     border-radius: 6px;
     background-color: #263e3e;
     color: white;
     width: 160px;
     font-weight: 700;
 }


 /*  style the shop by skin */

 .Skin_type h4 {
     /* text-align: center; */
     margin-left: 650px;
     font-size: 27px;
     margin-top: 120px;
 }

 .prod_img h3 {
     position: absolute;
     top: 244%;
     margin-left: 60px;
     font-size: 23px;
     color: black;
}
.whole_type{
    display: flex;
    max-width: 70%;
    margin-left: 260px;
    margin-right: auto;
    margin-top: 40px;
}

/* ad-img */
.ad_image img{
    width:100% ;
    height:590px;
    /* margin-left: 30px; */
    margin-top: 100px;
}

/* style the people product list */

.people_choice h2{
     text-align: center;
    font-size: 35px;
    color:rgb(117, 176, 117);
    font-weight: 700;
    margin-bottom: 60px;
    margin-top: 70px;
}


.peopleprod_list{
    display: flex;
    align-items: center;
    align-content: space-between;
    flex-wrap: nowrap;
    margin-left: 150px;
    overflow-x:scroll;
    max-width: 1200px;

}
.peopleprod_list::-webkit-scrollbar{
    display:none;
}


.people_choice img {
    width: 340px;
    border-radius: 10px;

}

.Prod_card {
    margin-right: 60px;

}
.Prod_card a img{
    width:350px;
    height:400px;
}

.Prod_card a p {
    margin-top: 18px;
    margin-bottom: 12px;
    font-weight: 700;
    font-size: 21px;
    color: #263e3e;
    margin-left: 40px;
}

.Prod_card h5 {
    margin-left: 120px;
    font-size: 17px;
    margin-bottom: 12px;
}

.icons {
    margin-left: 100px;
    
}

.Prod_card h3  {
    /* text-align: center; */
    margin-right: 18px;
    font-size: 19px;
    margin-left: 115px;
}

.Prod_card h3 {
    margin-top: 12px;
    font-size: 19px;
}

.Prod_card a button {
    margin-left: 72px;
    margin-top: 15px;
    padding: 12px;
    border: none;
    border-radius: 6px;
    background-color: #263e3e;
    color: white;
    width: 160px;
    font-weight: 700;
}


/* ------------ Start of the testimonial---------- */

.testo {
    margin-top: 125px;
    height: 620px;
    padding: 25px;
}

.small_container {
    margin: 40px auto;
    margin-bottom: 100px;
    max-width: 1080px;
    display: flex;
    justify-content: space-between;

}

.testi {
    max-width: 300px;
    text-align: center;
    height: 410px;
    padding: 10px 20px;
    box-shadow: 0 0 20px 0px rgb(0 0 0 / 10%);
    transition: all 0.5s;
}

.testi img {
    width: 100px;
    border-radius: 50%;
    margin-top: 15px;
}

.testi>.rating {
    margin-top: 20px;
    margin-left: -10px;
}

.testi i {
    color: #143939;
}

.testi_head h1 {
    color: #263e3e;
    font-size: 37px;
    font-weight: 700;
    transition: 0.2s;

}

.testi p {
    color: #555;
    font-weight: 800;
    font-size: 17px;
}

.testi:hover {
    transform: translateY(-20px);
}

/* --------------END OF THE TESTIMONIAL-------- */



/*---- Start the New letter Form-------- */

.news-form {
    max-width: 900px;
    margin-top: 50px;
    margin-left: 290px;
    text-align: center;
}

.news-form h1 {
    margin-bottom: 30px;
    font-size: 40px;
    font-weight: 900;
    letter-spacing: 1px;
    color: #143939;
}

.news-form p {
    font-size: 21px;
    font-weight: 600;
    text-transform: capitalize;
    margin: 50px auto;
    line-height: 30px;
}

.email-box i {
    color: white;
    background: #143939;
    width: 45px;
    border-radius: 5px;
    padding: 6px;
    line-height: 30px;
}

.email-box {
    display: flex;
    justify-content: center;
    margin-top: 50px;
    height: 45px;
    width: 880px;
    margin-bottom: 80px;
}

.tbox,
.sub-btn {
    outline: none;
    border: none;
}

.tbox {
    border: 2px solid #143939;
    border-radius: 4px;
    width: 0px;
    transition: 0.6s;

}

.email-box:hover>.tbox,
.tbox:focus {
    width: 500px;
    padding: 0px 10px;
}

.email-box a .sub-btn {
    text-transform: uppercase;
    padding: 0 10px;
    background: #143939;
    height: 45px;
    border-radius: 4px;
    margin-left: -18px;
    cursor: pointer;
    font-size: 14px;
    font-weight: 700;
    color: whitesmoke;
}

/* ------ End of the Newletter Form-------- */

/* Start the footer section */
.row{
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


.foot_logo img{
    width: 18%;
    margin-left: 240px;
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
	ProductService productList = new ProductService();
	%>
	<%
	Set<Product> listProducts = productList.listAllProduct();
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

<div class="banner_img">
        <div class="ad_img">
            <img src="https://cdn.shopify.com/s/files/1/0679/7672/4787/articles/Coffee-and-Skin-are-best-friends.webp?v=1671105708"
                alt="ad_img">

            <div class="content_ad">
                <h1>Purely Handcrafted</h1>
                <p>by- Slama </p>
                <button><a href="">Explore more</a> </button>
            </div>
        </div>
</div>

 <div class="type_prod">
        <h3>Choose yours</h3>
        <div class="whole_img">
        
        	<div class="prod_img">
               <a href=""> <img id="serum" src="https://missnatura.in/wp-content/uploads/2022/04/Toners.jpg" alt="Toner" img"></a>
               
            </div>
        	<div class="prod_img">
               <a href=""> <img id="serum" src="https://missnatura.in/wp-content/uploads/2022/04/Serums.jpg" alt="serum" img"></a>
            </div>
            <div class="prod_img">
               <a href=""> <img id="serum" src="https://missnatura.in/wp-content/uploads/2022/04/Creams.jpg" alt="serum" img"></a>
            </div>
            <div class="prod_img">
               <a href=""> <img id="serum" src="https://missnatura.in/wp-content/uploads/2022/04/Face-Wash.jpg" alt="serum" img"></a>
            </div>
        </div>
 </div>
 <div class="hot_sellers">
        <h2>Hot sellers</h2>
        <div class="products_list">
        <%
		for (Product products : listProducts) {
		%>
		<div class="Prod_card">
                <a href=""><img src="https://missnatura.in/wp-content/uploads/2022/04/ANTI-ACNE-SERUM.jpg"
                        alt="${hotsellers[i].prodname}"></a>
                <a href="">
                    <p><%=products.getName()%> - <%=products.getWeight()%><%=products.getQuantityUnit()%> </p>
                </a>
                
                <div class="icons">
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <h3><%=products.getPrice()%></h3>
                <a href="product/detail?id=<%=products.getId()%>"><button>View Details</button></a>
            </div>
        <%
		}
		%>
        </div>
 </div>
    
    <div class="shopyby_skin">
        <div class="Skin_type">
            <h4>Shop by skin type.</h4>
            <div class="whole_type">
                <div class="prod_img">
                    <a href=""><img src="https://missnatura.in/wp-content/uploads/2022/04/Dry.jpg" alt="dry img"></a>
                </div> 
                <div class="prod_img">
                    <a href=""><img src="https://missnatura.in/wp-content/uploads/2022/04/Oily.jpg" alt="dry img"></a>
                </div> 
                <div class="prod_img">
                    <a href=""><img src="https://missnatura.in/wp-content/uploads/2022/04/Sensitive.jpg" alt="dry img"></a>
                </div> 
                <div class="prod_img">
                    <a href=""><img src="https://missnatura.in/wp-content/uploads/2022/04/Normal.jpg" alt="dry img"></a>
                </div> 
            </div>
        </div>
    </div>
    
    <div class="ad">
        <div class="ad_image">
            <img src="http://127.0.0.1:5500/Saran's%20project/assets/img/5347355.jpg" alt="skin_care">
        </div>
    </div>
    
    <div class="people_choice">
        <h2>People's choice</h2>
        <div class="peopleprod_list">
        <%
		for (Product products : listProducts) {
		%>
        	<div class="Prod_card">
                <a href=""><img src="http://127.0.0.1:5500/Saran's%20project/assets/img/NEEM-SHAMPOO.jpg"
                        alt="product_img"></a>
                <a href="">
                    <p><%=products.getName()%> - <%=products.getWeight()%><%=products.getQuantityUnit()%></p>
                </a>
                <div class="icons">
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <h3>
                </h3>
                <a href="product/detail?id=<%=products.getId()%>"><button>Add to Cart</button></a>
            </div>
        <%
		}
		%>
        </div>
    </div>
    
    <div class="testo">
        <div class="testi_head">
            <h1 style="text-align: center;">Testimonials.</h1>
        </div>
        <div class="testimonial">
            <div class="small_container">
                <div class="testi">
                    <i class="fa-solid fa-quote-left"></i>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor quae doloribus ipsa ipsam
                        aspernatur,
                        ipsum laudantium odit autem quaerat repellendus aliquid, suscipit asperiores esse omnis
                        placeat
                        voluptatum voluptas, maiores aperiam.</p>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <img src="https://meganathan2003.github.io/dinesh-compelete-webpage/images/user-1.png"
                        alt="sean parker">
                    <h3>Sean Parker</h3>
                </div>
                <div class="testi">
                    <i class="fa-solid fa-quote-left"></i>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor quae doloribus ipsa ipsam
                        aspernatur,
                        ipsum laudantium odit autem quaerat repellendus aliquid, suscipit asperiores esse omnis
                        placeat
                        voluptatum voluptas, maiores aperiam.</p>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <img src="https://meganathan2003.github.io/dinesh-compelete-webpage/images/user-2.png"
                        alt="sean parker">
                    <h3>Jhon</h3>
                </div>
                <div class="testi">
                    <i class="fa-solid fa-quote-left"></i>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor quae doloribus ipsa ipsam
                        aspernatur,
                        ipsum laudantium odit autem quaerat repellendus aliquid, suscipit asperiores esse omnis
                        placeat
                        voluptatum voluptas, maiores aperiam.</p>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <img src="https://meganathan2003.github.io/dinesh-compelete-webpage/images/user-3.png"
                        alt="sean parker">
                    <h3>Henry Ford</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="news-form">
        <form action="">
            <h1>Join our newsletter.</h1>
            <p>An email newsletter is a recurring email sent to subscribed contacts containing curated informational
                content from news articles to resources and tips. The goal is to provide ongoing value while
                surfacing
                important industry- or niche-related topics.</p>
            <div class="email-box">
                <i class="fa-sharp fa-solid fa-envelope"></i>
                <input class="tbox" type="email" placeholder="Enter Your Email" required>
                <a href=""> <input class="sub-btn" type="button" value="Subscribe"></a>
            </div>
        </form>
    </div>
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
                        <li>Return and Refund.</li>
                    </a>
                    <a href="">
                        <li>Privacy Policy.</li>
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
</body>
</html>