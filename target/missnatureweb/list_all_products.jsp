<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.service.ProductService"%>
<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Of Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .container {
            max-width: 1200px;
            margin: 100px auto;
            padding: 20px;
        }

        .product-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            grid-gap: 20px;
        }

        .product-card {
            background-color: #ffffff;
            border: 1px solid #ddd;
            padding: 15px;
            width:280px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease-in-out;
        }

        .product-card:hover {
            transform: scale(1.05);
        }

        .product-image {
                width: 250px;
			    height: 300px;
			    max-height: 200px;
			    object-fit: cover;
        }

        .product-name {
            font-weight: bold;
            margin: 10px 0;
        }

        .product-description {
            font-size: 14px;
            margin-bottom: 10px;
            height:130px;
        }

        .product-price {
            font-size: 18px;
            color: #4CAF50;
        }

        .product-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }

        .product-actions button {
            background-color: #008CBA;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .product-actions button:hover {
            background-color: #005F7D;
        }
    </style>
</head>
<body>
<jsp:include page="admin_header.jsp" />
  
    <div class="container">
        <div class="product-list">
            <!-- Replace the following code with dynamic product data -->
            <%
            ProductService productList = new ProductService();
            Set<Product> listProducts = productList.listAllProduct();
            
            for (Product product : listProducts) {
            %>
            <div class="product-card">
                <img class="product-image" src="<%=product.getImage()%>" alt="Product Image">
                <h2 class="product-name"><%=product.getName()%></h2>
                <p class="product-description"><%=product.getDescription()%></p>
                <p class="product-price">&#8377; <%=product.getPrice()%></p>
                <div class="product-actions">
                <a href="product/view?id=<%=product.getId()%>"><button type="submit">View</button></a>
                <a href="product/edit?id=<%=product.getId()%>"><button type="submit">Update</button></a>
                <a href="product/delete?id=<%=product.getId()%>"><button type="submit">Delete</button></a>
                </div>
            </div>
            <!-- Repeat the product-card for each product in the list -->
            <%
            }
            %>
        </div>
    </div>
</body>
</html>