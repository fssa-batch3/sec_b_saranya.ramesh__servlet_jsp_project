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
        
<link rel="stylesheet" href="./assets/css/style.css"/> 
<link rel="stylesheet" href="./assets/css/header.css"/> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<script src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"> </script>

<title>Index</title>

</head>
<body>


	<%
	Set<Product> listProducts = (Set<Product>) request.getAttribute("allProducts");
	%>
<jsp:include page="header.jsp"/>

<div class="banner_img">
        <div class="ad_img">
            <img src="https://cdn.shopify.com/s/files/1/0679/7672/4787/articles/Coffee-and-Skin-are-best-friends.webp?v=1671105708"
                alt="ad_img">
            <div class="content_ad">
                <h1>Purely Handcrafted.</h1>
                <p>by- Slama </p>
                <button><a href="">Explore more</a> </button>
            </div>
        </div>
</div>

 <div class="type_prod">
        <h3>Choose yours</h3>
        <div class="whole_img">
        
        	<div class="prod_img">
               <a href="product/list?prod_type=TONER"> <img id="serum" src="https://missnatura.in/wp-content/uploads/2022/04/Toners.jpg" alt="Toner" img"></a>
               
            </div>
        	<div class="prod_img">
               <a href="product/list?prod_type=SERUM"> <img id="serum" src="https://missnatura.in/wp-content/uploads/2022/04/Serums.jpg" alt="serum" img"></a>
            </div>
            <div class="prod_img">
               <a href="product/list?prod_type=CREAMS"> <img id="serum" src="https://missnatura.in/wp-content/uploads/2022/04/Creams.jpg" alt="Creams" img"></a>
            </div>
            <div class="prod_img">
               <a href="product/list?prod_type=FACE_WASH"> <img id="serum" src="https://missnatura.in/wp-content/uploads/2022/04/Face-Wash.jpg" alt="face wash" img"></a>
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
                <a href=""><img src="<%=products.getImage()%>"
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
                <h3> &#8377 <%=products.getPrice()%></h3>
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
                    <a href="product/list?skin_type=DRY"><img src="https://missnatura.in/wp-content/uploads/2022/04/Dry.jpg" alt="dry img"></a>
                </div> 
                <div class="prod_img">
                    <a href="product/list?skin_type=OILY"><img src="https://missnatura.in/wp-content/uploads/2022/04/Oily.jpg" alt="dry img"></a>
                </div> 
                <div class="prod_img">
                    <a href="product/list?skin_type=SENSITIVE"><img src="https://missnatura.in/wp-content/uploads/2022/04/Sensitive.jpg" alt="dry img"></a>
                </div> 
                <div class="prod_img">
                    <a href="product/list?skin_type=NORMAL"><img src="https://missnatura.in/wp-content/uploads/2022/04/Normal.jpg" alt="dry img"></a>
                </div> 
            </div>
        </div>
    </div>
    
    <div class="ad">
        <div class="ad_image">
            <img src="https://res.cloudinary.com/dvb2bkrx9/image/upload/v1694059647/tf7dsgvo5vxbvljiwdkd.jpg" alt="skin_care">
        </div>
    </div>
    
    <div class="people_choice">
        <h2>People's choice</h2>
        <div class="peopleprod_list">
        <%
		for (Product products : listProducts) {
		%>
        	<div class="Prod_card">
                <a href=""><img src="<%=products.getImage()%>"
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
                <h3>&#8377
                <%=products.getPrice()%>
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