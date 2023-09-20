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
<link rel="stylesheet" href="../assets/css/product_list.css"/>
<link rel="stylesheet" href="../assets/css/header.css"/>  
</head>
<body>
	<%
	ProductService productList = new ProductService();
	%>
	<%
	Set<Product> listProducts = (Set<Product>) request.getAttribute("productListByCate");
	%>
	
<jsp:include page="header.jsp" />

 <h2 class="prod_name">Products</h2>
        <p class="navigation">Home/ Products</p>
		
		<section class="all_products">
		<%
		for (Product products : listProducts) {
		%>
		<div class="Prod_card">
                <a href=""><img src="<%=products.getImage()%>" alt="product_img"/></a>
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
                <h3>&#8377
                   <%=products.getPrice()%>
                </h3>
                <a href="detail?id=<%=products.getId()%>"><button>View Details</button></a>
            </div>
		<%
		}
		%>
		</section>
</body>
</html>
