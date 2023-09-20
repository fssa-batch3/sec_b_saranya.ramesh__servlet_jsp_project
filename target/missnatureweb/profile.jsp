<%@page import="in.fssa.missnature.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;600&family=Poppins:ital,wght@0,400;1,300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="./assets/css/header.css"/> 
<link rel="stylesheet" href="./assets/css/profile.css"/>
</head>
<body>
<% 
	User user = (User) request.getAttribute("userDetail");
%>

<jsp:include page="header.jsp" />
<section class="body">
        <div class="top">
            <div>
                <img class="pro_img" src="https://meganathan2003.github.io/dinesh-compelete-webpage/images/user-1.png">
            </div>
            <div class="user_name">
                <h3><%= user.getName() %></h3>
                <p>Hello <%= user.getName() %>! Here is your profile!!</p> 
            </div>
        </div>
          
    </section>

    <div class="whole-sec">
        <div class="detail">
            <h3>My Dash box</h3>
            <div class="dash-box">
            <a href=""><button>My order</button></a>
            <hr>
            <a href=""><button>My cart</button></a>
            <hr>
            <a href=""><button>My Wishlist</button></a>
            <hr>
            <button>My Address</button>
            <hr>
            </div>
        </div>
<form action="edit/profile">
        <div class="profile">
            <h3>My Profile</h3>
            <div class="form">
                <div>
                    <label> Name</label>
                    <input type="text" id="name" name="name" value="<%= user.getName() %>" disabled/>
                </div>
                <div>
                    <label>Email</label>
                    <input type="text" id="email" name="email" value="<%= user.getEmail() %>" disabled/>
                </div>
                <div>
                    <label> Mobile Number</label>
                    <input type="tel" id="number" name="mobileNumber" value="<%=user.getMobileNumber()%>" disabled/>
                </div>
                <div>
                    <label for="address">Address</label>
                    <input type="text" id="Address" name="address" value="<%= user.getAddress() %> " disabled>
                </div>
                <div>
                    <label for="state">State:</label>
                    <input type="text" id="State" name="state" value="<%= user.getState() %>" disabled>
                </div>
                <div>
                    <label for="city">City</label>
                    <input type="text" id="City" name="city" value="<%= user.getCity() %>" disabled>
                </div>
                <div>
                    <label>Pincode</label>
                    <input type="text" id="pincode" name="pincode" value="<%= user.getPincode() %>" disabled>
                </div>
                <button id="edit" onclick="edit()">Edit</button>
                <button id="save" type="submit" onclick="save()" style="display:none;">Save</button>
            
        </div>
    </div>
  </form>
    </div>
    <script>

        function edit() {
		    // Get all the input elements with the 'disabled' attribute
		    const inputElements = document.querySelectorAll('input[disabled]');
		    
		    inputElements.forEach(input => {
		        input.removeAttribute('disabled');
		    });
		
		    // Show the "Save" button and hide the "Edit" button
		    document.getElementById("edit").style.display = "none";
		    document.getElementById("save").style.display = "inline-block";
		    
		    
}
        
        function save() {
            // Get all the input elements
            const inputElements = document.querySelectorAll('input');

            // Loop through the input elements and add the 'disabled' attribute
            inputElements.forEach(input => {
                input.setAttribute('disabled', 'true');
            });

            user.getName() = document.getElementById("name").value;
            user.getAddress() = document.getElementById("Address").value;
 
            // Hide the "Save" button and show the "Edit" button
            document.getElementById("edit").style.display = "inline-block";
            document.getElementById("save").style.display = "none";
        }

    </script>
</body>
</html>