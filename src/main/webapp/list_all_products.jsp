<%@page import="java.util.Set"%>
<%@page import="in.fssa.missnature.service.ProductService"%>
<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	ProductService productList = new ProductService();
	%>
	<%
	Set<Product> listProducts = productList.listAllProduct();
	%>

	<table border=1>
		<tr>
			<th>id</th>
			<th>name</th>
			<th>description</th>
			<th>weight</th>
			<th>quantityUnit</th>
			<th>price</th>
			<th>ingredients</th>
			<th>benefits</th>
			<th>howToUse</th>
			<th>shelfLife</th>
			<th>categoryId</th>
			<th>Actions</th>
			
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