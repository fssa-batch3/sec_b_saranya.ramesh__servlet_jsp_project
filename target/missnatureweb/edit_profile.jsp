<%@page import="in.fssa.missnature.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;600&family=Poppins:ital,wght@0,400;1,300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="./assets/css/header.css"/>


<style>
    /* Style for form elements */
    .form-container {
           background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 450px;
    margin: 100px 470px;
    }

    .form-label {
        color: #263e3e; /* Text color */
        font-size: 16px;
        margin-bottom: 5px;
    }

	h2{
	margin-bottom:20px;
	}
    .form-input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #263e3e; /* Border color */
        border-radius: 3px;
        color: #263e3e; /* Text color */
    }
    .form-input[readonly] {
        /* Apply the same styles as regular input fields */
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #263e3e;
        border-radius: 3px;
        color: #263e3e;
        background-color: transparent; /* Remove the background color */
        cursor: not-allowed; /* Display a "not-allowed" cursor */
    }

    /* Style for button */
    .button-container {
        text-align: center;
    }

    .save-button {
        background-color: #263e3e; /* Button background color */
        color: #fff; /* Text color */
        border: none;
        border-radius: 3px;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
    }

    .save-button:hover {
        background-color: #174949; /* Hover color */
    }

</style>
</head>
<body>
<% 
    User user = (User) request.getAttribute("userDetails");
    if(user != null){
%>
<jsp:include page="header.jsp" />
<div class="form-container">
<h2>Edit your Profile</h2>
    <form action="<%= request.getContextPath() %>/updateProfile" method="post">
        <div>
            <label class="form-label">Name</label>
            <input type="text" id="name" name="name" class="form-input" value="<%= user.getName() != null ? user.getName() : "" %>" />
        </div>
        <div>
             <label class="form-label">Email</label>
             <input type="text" id="email" name="email" value="<%= user.getEmail() != null ? user.getEmail() : "" %>" readonly/>
        </div>
        <div>
            <label class="form-label" for="address">Address</label>
            <input type="text" id="Address" name="address" class="form-input" value="<%= user.getAddress() != null ? user.getAddress() : "" %>" >
        </div>
        <div>
            <label class="form-label" for="city">City</label>
            <input type="text" id="City" name="city" class="form-input" value="<%= user.getCity() != null ? user.getCity() : "" %>" >
        </div>
        <div>
            <label class="form-label" for="state">State:</label>
            <input type="text" id="State" name="state" class="form-input" value="<%= user.getState() != null ? user.getState() : "" %>" >
        </div>
        <div>
            <label class="form-label">Pincode</label>
            <input type="text" id="pincode" name="pincode" class="form-input" value="<%= user.getPincode() != null ? user.getPincode() : "" %>" >
        </div>

        <div class="button-container">
            <button id="save" type="submit" class="save-button">Save</button>
        </div>
    </form>
</div>
<%
}
%>
</body>
</html>
