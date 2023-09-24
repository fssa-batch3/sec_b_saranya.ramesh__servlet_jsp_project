<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.service.ProductService"%>
<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>List Of Products</title>
<style>
   table {
    border-collapse: collapse;
    width: 100%;
  }

  th, td {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 8px;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  th {
    background-color: #4CAF50;
    color: white;
  }

  td a {
    text-decoration: none;
  }

  button {
    background-color: #008CBA;
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
  }

  button:hover {
    background-color: #005F7D;
  }
  .image{
  width : 200px;
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

<a href="product/new"><button>Create product</button></a>
<a href="order_list"><button>View Orders</button></a>
	<table border=1>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Weight</th>
			<th>Quantity Unit</th>
			<th>Price</th>
			<th>Image</th>
			<th>Skin Type</th>
			<th>Product Type</th>
			<th>Ingredients</th>
			<th>Benefits</th>
			<th>How To Use</th>
			<th>ShelfLife</th>
			<th>CategoryId</th>
			<th colspan="3">Actions</th>
		</tr>
		<%
		for (Product products : listProducts) {
		%>
		<tr>
			<td><%=products.getId()%></td>
			<td><%=products.getName()%></td>
			<td><%=products.getDescription()%></td>
			<td><%=products.getWeight()%>
			<td><%=products.getQuantityUnit()%></td>
			<td><%=products.getPrice()%></td>
			<td><image class="image" src="<%=products.getImage()%>"/></td>
			<td><%=products.getSkinType()%></td>
			<td><%=products.getProductType()%></td>
			<td><%=products.getIngredients()%></td>
			<td><%=products.getBenefits()%></td>
			<td><%=products.getHowToUse()%></td>
			<td><%=products.getShelfLife()%></td>
			<td><%=products.getCategoryId()%></td>
			<td><a href="product/view?id=<%=products.getId()%>"><button type="submit">View</button></a>
			<td><a href="product/edit?id=<%=products.getId()%>"><button type="submit">Update</button></a></td>
			<td><a href="product/delete?id=<%=products.getId()%>"><button type="submit">Delete</button></a></td>
		</tr>
		
		<%
		}
		%>
	</table>
</body>
</html>