<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Header</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/header.css">
</head>
<body>
<div class="nav_1">
<div class="header-img">
    <img src="<%=request.getContextPath()%>/assets/images/MissNatura_logo.png" alt="header_logo">
</div>
<div class="Navigation">
    <ul>
    	<li><a href="list_all_products">List All Products</a></li>
        <li><a href="product/new">Create Product</a></li>
        <li><a href="order_list">View Orders</a> </li>
        <li><a href=""><i class="fa-solid fa-user"></i></a></li>
        <a href="<%=request.getContextPath()%>/logout" ><button id="logout" type="submit">Logout</button></a>
    </ul>
</div>
</div>
</body>
</html>