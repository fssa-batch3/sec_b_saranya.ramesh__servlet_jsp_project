<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Product</title>
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
h2{
textalign: center;
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
<div class="container">
	<form action = "create" method = "post" >
<h2> Create Product </h2>
		<label for="Product name" >Product Name</label>
		<input type="text" name="Productname" required/><br>
		
		<label for="description" >Description</label>
		<input type="text" name="description" required/><br>
	
		<label for="categoryId" >CategoryId</label>
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
		
		<label for="Quantity Unit"> Quantity Unit</label>
		<select name = "quantityUnit" >
			<option> G </option>
			<option> ML</option>
		</select>
		
		<button type="submit">Submit</button>
		
	</form>
	</div>
</body>
</html>