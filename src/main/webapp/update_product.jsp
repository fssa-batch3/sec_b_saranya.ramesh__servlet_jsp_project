<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update product</title>
</head>
<body>
<% 
	Product product = (Product) request.getAttribute("product");
%>

 <div class="container">
    <h2>Update Product</h2>
    	<form action="update" method="POST">
	
		<input type="hidden" name="id" value="<%= product.getId() %>" > 
		
	    	<label for="Product name" >Product Name</label>
			<input type="text" name="Productname" value="<%= product.getName() %>" required/><br>
			
			<label for="description" >description</label>
			<input type="text" name="description" value="<%= product.getDescription() %>" required/><br>
		
			<label for="categoryId" >categoryId</label>
			<input type="number" name="categoryId" value="<%= product.getCategoryId() %>" required/><br>
			
			<label for="Ingredients" >Ingredients</label>
			<input type="text" name="Ingredients" value="<%= product.getIngredients() %>" required/><br>
			
			<label for="ShelfLife" >Shelf life</label>
			<input type="text" name="ShelfLife" value="<%= product.getShelfLife()%>" required/><br>
			
			<label for="Benefits" >Benefits</label>
			<input type="text" name="Benefits" value="<%= product.getBenefits() %>" required/><br>
			
			<label for="How to use" >How To Use</label>
			<input type="text" name="Howtouse" value="<%= product.getHowToUse() %>" required/><br>
			
			<label for="Weight">Weight</label>
			<input type="text" name="weight" value="<%= product.getWeight() %>" required/><br>
			
			<label for="price">Price</label>
			<input type="text" name="price" value="<%= product.getPrice() %>" required/><br>
			
			<label for="Quantity Unit">Quantity unit</label>
			
			<select name="quantityUnit">
		    <option value="G" <%= product.getQuantityUnit().equals("G") ? "selected" : "" %>>G</option>
		    <option value="ML" <%= product.getQuantityUnit().equals("ML") ? "selected" : "" %>>ML</option>
			</select>
			
			<button type="submit">Update</button>
		</form>
</div>
</body>
</html>