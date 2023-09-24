<%@page import="java.lang.System.Logger"%>
<%@page import="in.fssa.missnature.model.Orders"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order List</title>
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
	Set<Orders> orderList = (Set<Orders>) request.getAttribute("orders");
	%>
	
	<table border=1>
		<tr>
			<th>Id</th>
			<th>UserId</th>
			<th>Product Name</th>
			<th>Product Image</th>
			<th>Quantity</th>
			<th>Address</th>
			<th>Price</th>
			
		</tr>
		
		<%
		for(Orders orders : orderList){
		%>
		<tr>
			<td><%=orders.getId()%></td>
			<td><%=orders.getUserId()%></td>
			<td><%=orders.getProductName()%></td>
			<td><image class="image" src="<%=orders.getProductImage()%>"/></td>
			<td><%=orders.getQuantity()%></td>
			<td><%=orders.getAddress()%></td>
			<td><%=orders.getPrice()%></td>
		</tr>
		<%
		}
		%>
		
	</table>
</body>
</html>