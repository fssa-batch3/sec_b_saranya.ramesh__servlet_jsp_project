<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/assets/Css/my_order.css" />
    <link rel="stylesheet" href="/assets/Css/header.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="./assets/css/header.css">
    <title>My order</title>
    <style>
    .header-img img {
    width: 16%;
}
.header-img {
    margin-left: 200px;
}
.head{
    margin:80px 0px 0px 100px;
}
.single_prod{
    display: flex;
    margin-top:20px;
}
.prod_info{
    border-style: groove;
    padding: 30px 50px;
    margin: 80px 100px;
}
.prod_info h2{
    margin:-3px 0px 20px;
    /* font-family:'Montserrat', sans-serif;  */
}
.prof_img{
    justify-content: center;
    align-items: center;
}
.status{
    margin:-2px 50px 0px 50px;
}
.status p{
    margin: 10px 0px;
}
.status_img{
    position: relative;
    top:15px;
}
    
    </style>
    
  </head>
  <body>
  <jsp:include page="header.jsp" />

<h1 class="head"> My Orders</h1>
<div class="whole_product">
 <div class="prod_info">
        <h2> Order Status : <img class="status_img" src="/assets/img/loading.jpg" width="50px"> Will Deliver with in 2 days </h2>
      <hr>
      <div class="single_prod">
        <div class="prof_img">
          <img
            src="/assets/image/tick.png"
            width="150px"
            height="130px"
            alt="Rosemery leaves"
          />
        </div>
        <div class="status">
          <p>Saffron gel - 100 g</p>
          <p>1</p>
          <p>Rate your product</p>
          <div class="icons">
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
      </div>

</div>
</div>
</body>
</html>