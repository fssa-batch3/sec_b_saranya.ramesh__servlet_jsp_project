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
<link rel="stylesheet" href="./assets/css/header.css"/>  
<link rel="stylesheet" href="../assets/css/footer.css"/>  
</head>
<body>
	<%
	ProductService productList = new ProductService();
	%>
	<%
	Set<Product> listProducts = (Set<Product>) request.getAttribute("productListByCate");
	%>
	
<jsp:include page="header.jsp" />

	<section class="filter">
	            <div class="wrapper">
	                <div id="search-container">
	                    <input type="search" id="search-item" placeholder="search Products here" onkeyup="search()">
	                    <button id="search">Search</button>
	                </div>
	            </div>
	
	</section>
<div class="search">
	 <label for="filter">Filter by:</label>
    <select id="filter">
        <option value="all">All</option>
        <option value="category1">OILY</option>
        <option value="category2">DRY</option>
        <option value="category3">NORMAL</option>
        <option value="">SENSITIVE</option>
    </select>
</div>
<!-- 
    Content to be filtered
    <div id="content">
        <div class="item" data-category="category1">Item 1 (Category 1)</div>
        <div class="item" data-category="category2">Item 2 (Category 2)</div>
        <div class="item" data-category="category1">Item 3 (Category 1)</div>
        <div class="item" data-category="category3">Item 4 (Category 3)</div>
    </div> -->

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
               
                <h3>&#8377
                   <%=products.getPrice()%>
                </h3>
                <a href="detail?id=<%=products.getId()%>"><button>View Details</button></a>
            </div>
		<%
		}
		%>
		</section>
		
<jsp:include page="footer.jsp"/>

<script>
function search() {
	  // Get the value of the search box and convert it to lowercase
	  const searchbox = searchBox.value.toLowerCase();

	  // Find all elements with class 'Box'
	  const box = document.querySelectorAll(".Prod_card");

	  // Loop through each 'Box' element
	  for (let i = 0; i < box.length; i++) {
	    // Find the first <h3> element inside the current 'Box' element
	    const match = box[i].getElementsByTagName("p")[0];

	    if (match) {
	      // Get the text content of the <h3> element and convert it to lowercase
	      const textvalue = match.textContent || match.innerHTML;
	      const lowercaseTextValue = textvalue.toLowerCase().trim();

	      // Show the 'Box' element if the search text matches the <h3> text
	      if (lowercaseTextValue.indexOf(searchbox) > -1) {
	        box[i].style.display = "";
	      } else {
	        box[i].style.display = "none";
	      }
	    }
	  }
	}

	// Get the search box element and add an event listener for when the user types
	const searchBox = document.getElementById("search-item");
	searchBox.addEventListener("keyup", search);
	
	
	 const filterSelect = document.getElementById('filter');
     const items = document.querySelectorAll('.item');

     filterSelect.addEventListener('change', function () {
         const selectedCategory = filterSelect.value;

         items.forEach(item => {
             const itemCategory = item.getAttribute('data-category');
             if (selectedCategory === 'all' || selectedCategory === itemCategory) {
                 item.style.display = 'block';
             } else {
                 item.style.display = 'none';
             }
         });
     });
</script>
</body>
</html>
