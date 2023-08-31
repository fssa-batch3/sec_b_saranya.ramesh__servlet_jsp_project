<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action = "create" method = "post" >

		<label for="Product name" >Product Name</label>
		<input type="text" name="Productname" required/><br>
		
		<label for="description" >description</label>
		<input type="text" name="description" required/><br>
	
		<label for="categoryId" >categoryId</label>
		<input type="number" name="categoryId" required/><br>
		
		<label for="Ingredients" >Ingredients</label>
		<input type="text" name="Ingredients" required/><br>
		
		<label for="ShelfLife" >Shelf life</label>
		<input type="text" name="ShelfLife" required/><br>
		
		<label for="Benefits" >Benefits</label>
		<input type="text" name="Benefits" required/><br>
		
		<label for="How to use" >How To Use</label>
		<input type="text" name="Howtouse" required/><br>
		
		<label for="Weight"> Weight </label>
		<input type="text" name="weight" required/><br>
		
		<label for="price"> Price </label>
		<input type="text" name="price" required/><br>
		
		<label for="Quantity Unit"> Quantity unit</label>
		<select name = "quantityUnit" >
			<option> G </option>
			<option> ML</option>
		</select>
		
		<button type="submit"> Submit</button>
		
	</form>
</body>
</html>