<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us</title>
</head>
<link rel="stylesheet" href="./assets/css/contact_us.css"/> 
<link rel="stylesheet" href="./assets/css/header.css"/> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<body>
<jsp:include page="header.jsp" />
  <div class="wrapper">
    <h2>CONTACT US</h2>
    <form action="" method="POST">
      <div class="form-group">
        <label for="name">Full Name</label>
        <input type="text" name="Name" id="name" placeholder="First and Last" required minlength="3" maxlength="25" />
      </div>
      <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" name="Email" id="email" placeholder="email@domain.tld" required />
      </div>
      <div class="form-group">
        <label for="message">Message</label>
        <textarea name="Message" id="message" rows="5" placeholder="Type your message here...."></textarea>
      </div>
      <div class="form-group">
        <button type="submit" class="submit"><i class="far fa-paper-plane"></i>Send</button>
      </div>
    </form>
  </div>
  
      <hr>
    <footer>
        <div class="row">
            <div class="foot_logo">
                <img src="https://missnatura.in/wp-content/uploads/2022/04/MissNatura_logo.png" alt="website logo">
            </div>
            <div class="Quick_links">
                <h2>Quick Links</h2>
                <ul>
                    <a href="">
                        <li>Shop</li>
                    </a>
                    <a href="">
                        <li>About</li>
                    </a>
                    <a href="">
                        <li>contact</li>
                    </a>
                </ul>
            </div>
            <div class="Legal">
                <h2>Legal</h2>
                <ul>
                    <a href="">
                        <li>Shipping Policy</li>
                    </a>
                    <a href="">
                        <li>Return and Refund</li>
                    </a>
                    <a href="">
                        <li>Privacy Policy</li>
                    </a>
                </ul>
            </div>
            <div class="contact_us">
                <h2>Contact us</h2>
                <div class="social_icons">
                    <a href=""><i class="fa-brands fa-facebook"></i></a>
                    <a href=""><i class="fa-brands fa-instagram"></i></a>
                    <a href=""><i class="fa-brands fa-whatsapp"></i></a>
                    <a href=""><i class="fa-brands fa-twitter"></i></a>
                </div>

            </div>
        </div>
    </footer>
</body>
</html>