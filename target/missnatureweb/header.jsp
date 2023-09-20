<%@page import="in.fssa.missnature.dao.UserDAO"%>
<%@page import="in.fssa.missnature.model.User"%>
<header class="header" id="header">
<% String user = (String) session.getAttribute("loggedInEmail");
boolean isLogin_in = user != null;
%>
<%
if (isLogin_in == false) {
%>
<div class="nav_1">
<div class="header-img">
    <img src="./assets/images/MissNatura_logo.png" alt="header_logo">
</div>
<div class="Navigation">
    <ul>
        <li> <a href="<%=request.getContextPath()%>/index">Home</a></li>
        <li>
            <div class="dropdown">
      <p class="dropbtn">Shop</p>
      <div class="dropdown-content">
        <a href="<%=request.getContextPath()%>/product/list?id=1">Face Care</a>
      <a href="<%=request.getContextPath()%>/product/list?id=3">Body Care</a>
      <a href="<%=request.getContextPath()%>/product/list?id=2">Hair Care</a>
            </div>
              </div>
        </li>
        
        <li> <a href="">Kits</a>
        </li>
        <li><a href=""> Contact us</a></li>
        <li><a href="">About us</a> </li>
        <a href="<%=request.getContextPath()%>/sign_up.jsp"><button id="button">Sign Up</button></a> 
    </ul>
</div>
</div>

<%
} else {
%>

	<div class="nav_1">
<div class="header-img">
    <img src="./assets/images/MissNatura_logo.png" alt="header_logo">
</div>
<div class="Navigation">
    <ul>
        <li> <a href="<%=request.getContextPath()%>/index">Home</a></li>
        <li>
        <div class="dropdown">
        <p class="dropbtn">Shop</p>
        <div class="dropdown-content">
         <a href="<%=request.getContextPath()%>/product/list?id=1">Face Care</a>
      <a href="<%=request.getContextPath()%>/product/list?id=3">Body Care</a>
      <a href="<%=request.getContextPath()%>/product/list?id=2">Hair Care</a>
              </div>
                </div>
        </li>      
        </li>
        <li><a href="<%=request.getContextPath()%>/contact_us.jsp"> Contact us</a></li>
        <li><a href="">About us</a> </li>
        <li><a href="<%=request.getContextPath()%>/wishlist.jsp"><i class="fa-regular fa-heart"></i></a></li>
        <li><a href="<%=request.getContextPath()%>/profile"><i class="fa-solid fa-user"></i></a></li>
        <li><a href="<%=request.getContextPath()%>/add_to_cart.jsp"> <i class="fa-solid fa-cart-shopping"></i></a></li>
        <a href="<%=request.getContextPath()%>/logout" ><button id="logout" type="submit">Logout</button></a>
    </ul>
</div>
</div>

<%
}
%>
</header>