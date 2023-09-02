<%@page import="in.fssa.missnature.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update product</title>
<style type="text/css">
<style type="text/css">
body, h2, form, label, input, select, button {
    margin: 0;
    padding: 0;
    border: none;
    outline: none;
    font-family: Arial, sans-serif;
}

/* Set background color and add some spacing */
body {
    background-color: #f2f2f2;
    padding: 20px;
}

/* Style the container */
.container {
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    padding: 20px;
    max-width: 600px;
    margin: 0 auto;
}

/* Style the form */
form {
    display: flex;
    flex-direction: column;
}

/* Style form labels */
label {
    margin-top: 10px;
    font-weight: bold;
}

/* Style form input fields */
input[type="text"],
input[type="number"],
select {
    margin-bottom: 10px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

/* Style the submit button */
button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

/* Add some spacing between elements */
form > * {
    margin-bottom: 10px;
}

/* Style the hidden input */
input[type="hidden"] {
    display: none;
}
</style>
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
		
			<label for="categoryId" >CategoryId</label>
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