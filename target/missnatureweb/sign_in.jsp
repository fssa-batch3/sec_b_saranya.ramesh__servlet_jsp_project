<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="./assets/css/sign_in.css" />
<link rel="stylesheet" href="./assets/css/header.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"> </script>
</head>
<body>
	<!--  Below the code for show the error -->
<%
String error = (String) request.getAttribute("errorMessage");
if (error != null && !("".equals(error))) {
%>
<script>
  Notify.error(
    `<%=error%>`
  );
  
  setTimeout(function() {
    Notify.closeAll(); 
  }, 5000); 
</script>
<%
}
%>

	<%-- <%
	} else {
	%>
	<script>
        Notify.error("please fill the details");
    </script> --%>
	

	<jsp:include page="header.jsp" />
	<div class="container">
		<div class="container-form">
			<form action="<%=request.getContextPath()%>/SignIn" method="post"
				class="sign-form" id="sign-form" autocomplete="on">
				<h1 class="form-title">Sign In</h1>
				<p class="form-caption">Feed your skin with Nature!!</p>

				<label for="email">Email<span class="star-required">*</span></label>
				<input type="email" name="email" id="email"
					placeholder="mail@website.com"
					pattern="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" required>

				<label for="password">Password<span class="star-required">*</span></label>
				<input type="password" name="password" id="password"
					placeholder="Min. 8 character" required/>
				<button type="submit" id="submit">Sign In</button>
				<p class="have-account-line">
					Doesn't have an Account?<a
						href="<%=request.getContextPath()%>/sign_up.jsp"><b>Register
							here</b></a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>