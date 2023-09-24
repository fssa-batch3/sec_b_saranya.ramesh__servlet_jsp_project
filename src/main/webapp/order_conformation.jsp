<%@page import="in.fssa.missnature.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order Conformation</title>
<link rel="stylesheet" href="./assets/css/header.css"/> 
</head>
<style>

fieldset{
    border: none;
    margin-top: 80px;
    border-radius: 16px;
    width: 47%;
    height: 550px;
    margin-left: 400px;
    background: whitesmoke;
    box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 15px -3px, rgba(0, 0, 0, 0.05) 0px 4px 6px -2px;
}

legend{
    font-size: 0px;
    color: white;
}

.order_placed{
    margin-top: 20px;
}
fieldset img{
    margin-top: 10px;
    width: 190px;
    margin-left: 250px;
}
.order_placed p{
    margin-left: 275px;
    font-size: 21px;
    font-weight: 800;
}
.order_placed h3{
    margin-top: 20px;
    margin-left: 130px;
    font-size: 45px;
    font-weight: 900;
}
.order_placed h4{
    
    margin-top: 5px;
    font-size: 25px;
    font-weight: 700;
    margin-left: 229px;
}
.span-1{
    color: red;
    font-weight: 900;
    font-size: 45px;
}

span{
    font-size: 35px;
}
.order_placed button{
    margin-top:30px;
    margin-left: 246px;
    padding: 10px 25px;
    color:black;
    border:2px solid rgb(229, 165, 45);
    border-radius: 12px;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.2s;
}
.fa-sharp{
    color: rgb(228, 171, 65);
    margin-right: 10px;
    font-size: 20px;
}
button:hover{
    text-decoration: underline;
    background-color: lightgrey;
    color: black;
}

</style>
<body>
<jsp:include page="header.jsp" />
<% User user = (User) session.getAttribute("loggedInEmail");%>
  <fieldset>
        <legend style="text-align: center;"> Orders</legend>
        <div class="order_placed">
            <img src="<%=request.getContextPath()%>/assets/images/tick.png" alt="order place img"><br><br>
            <p>Hey <%=user.getName()%></p>
            <h3>Your Order is <span class="span-1">Compelete!</span></h3>
            <h4>Thanks For Visting <span>&#128512;</span></h4>
            <a href="<%=request.getContextPath()%>/order/list"><button> <i class="fa-sharp fa-solid fa-compass"></i>View Order!</button></a>
        </div>
    </fieldset>

</body>
</html>