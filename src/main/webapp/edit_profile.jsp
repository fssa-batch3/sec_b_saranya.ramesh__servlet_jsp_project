<%@page import="in.fssa.missnature.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit profile</title>
<link rel="stylesheet" href="./assets/css/header.css"/>
</head>
<body>

<% 
	User user = (User) request.getAttribute("userDetail");
%>
<jsp:include page="header.jsp" />
<div class="form-container">
<form action="update_profile" method="POST">
    <div>
        <label class="form-label">Name</label>
        <input type="text" id="name" name="name" class="form-input" value="<%= user.getName() %>" />
    </div>
    <div>
        <label class="form-label">Email</label>
        <input type="text" id="email" name="email" class="form-input" value="<%= user.getEmail() %>" />
    </div>
    <div>
        <label class="form-label">Mobile Number</label>
        <input type="tel" id="number" name="mobileNumber" class="form-input" value="<%=user.getMobileNumber()%>" />
    </div>
    <div>
        <label class="form-label" for="address">Address</label>
        <input type="text" id="Address" name="address" class="form-input" value="<%= user.getAddress() %> ">
    </div>
    <div>
        <label class="form-label" for="state">State:</label>
        <input type="text" id="State" name="state" class="form-input" value="<%= user.getState() %>" >
    </div>
    <div>
        <label class="form-label" for="city">City</label>
        <input type="text" id="City" name="city" class="form-input" value="<%= user.getCity() %>" >
    </div>
    <div>
        <label class="form-label">Pincode</label>
        <input type="text" id="pincode" name="pincode" class="form-input" value="<%= user.getPincode() %>" >
    </div>
 
    <div class="button-container">
        <button id="save" type="submit" class="save-button">Save</button>
    </div>
    </form>
</div>

</body>
</html>