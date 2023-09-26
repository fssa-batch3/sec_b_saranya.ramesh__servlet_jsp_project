<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="./assets/css/header.css"/>
<style type="text/css">
* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
   
}

.container{
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    font-family: 'Alkatra', cursive;
}
.container-form{
    width: 50%;
    height: 100%;
    margin: 10vh auto;
}
#sign-form {
    width: 100%;
    /* height: 100%; */
    /* margin: 10vh auto; */
    /* background-color: brown; */
    padding: 5%;
}

label:not(label:first-of-type) {
    display: block;
    margin: 15px 0 5px 0;
    font-size: 14px;
}

.sentence-agree {
    display: inline;
    font-size: 14px;
}

#submit {
    display: block;
    width: 90%;
    height: 45px;
    background-color:#143939 !important;
    color: #fff !important;
    font-size: 1rem;
    cursor: pointer;
    margin :5%;
    padding-left: 20px;
    border: 1px solid #cccccc;
    border-radius: 30px;
    /* margin:10px 0px 200px 300px;  */
}

#submit:hover {
    background-color:#143939 !important;
}

div.hr-left, div.hr-right {
    width: 30%;
    height: 1px;
    background-color: #cccccc;
}

p.guide-google {
    font-size: 14px;
    color: #cccccc;
    width: 40%;
    margin: auto 5px;
}

input:not(input#terms-agree) {
    background-color: #fff; 
    width: 100%;
    height: 45px;
    padding-left: 20px;
    border: 1px solid #cccccc;
    border-radius: 30px;
    color: #143939;
}

input:focus {
    outline: 1px solid #143939;
}

.google-sign-btn {
    width: 100%;
    height: 45px;
    border: 1px solid #cccccc;
    border-radius: 30px;
    outline: none;
    background-color: #fff;
    font-size: 1rem;
    cursor: pointer;
}

.google-sign-btn:hover {
    background-color: #cccccc;
}

i.fa-google {
    font-size: 25px;
    margin-right: 5px;
    vertical-align: middle;  
    color: #143939;
}

.form-caption {
    color: #737373;
    margin-bottom: 30px;;
}

.star-required {
    color:#143939;
}

input[type=checkbox] {
    margin: 30px 0 30px 0;
    accent-color: #143939;
}

a {
    color:#143939;
    text-decoration: none;
    font-size: 22px;
}

a:hover {
    color:#143939 ;
}

.have-account-line {
    font-size: 14px;
}

.info {
    color: #737373;
    font-size: 14px;
}

.google-guide-container {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    padding: 20px 0;
}


</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<script src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"> </script>
</head>
<body>

<jsp:include page="header.jsp" />
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
  }, 100000); 
</script>
	<%-- <%
	} else {
	%>
	<script>
        Notify.error("please fill the details");
    </script>
	 --%>
	<%
	}
	%>
	
<div class="container">
        <div class="container-form">
        <form action="Create" method="post" class="sign-form" id="sign-form" autocomplete="on">
            <h1 class="form-title">Sign Up</h1>
            <p class="form-caption">See your growth and get consulting support!</p>

            <label for="username">Name <span class="star-required">*</span></label>
            <input type="text" name="name" id="username" placeholder="Name" pattern="[a-zA-Z ]+" autofocus required>

            <label for="email">Email<span class="star-required">*</span></label>
            <input type="email" name="email" id="email" placeholder="mail@website.com" pattern="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" required>

            <label for="mobileNumber">Mobile Number<span class="star-required">*</span></label>
            <input type="tel" name="phone_number" id="mobileNumber" placeholder="1234567898"  required>

            <label for="password">Password<span class="star-required">*</span></label>
            <input type="password" name="password" title="include one digit, One UpperCase, One LowerCase" id="password" placeholder="Min. 8 character" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required />
           
            <label for="cfm-password">Confirm Password<span class="star-required">*</span></label>
            <input type="password" name="cfm-password" id="conformPassword" placeholder="Min. 8 character" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required />
            <br>
            
            <button type="submit" id="submit">Sign Up</button>
        </form>
        <p class="have-account-line">Already have an Account?<a href="<%=request.getContextPath()%>/sign_in.jsp">Sign in</a></p>

    </div>
    </div>

</body>
</html>