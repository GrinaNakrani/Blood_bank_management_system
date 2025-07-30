<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Blood Request Form</title>
  <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Raleway', sans-serif;
    }

    body {
      background: #f0f4f8;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* HEADER */
    .header {
      background-color: white;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 35px 60px;
      height: 120px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .logo img {
      height: 80px;
    }

    .header-right a {
      margin-left: 40px;
      text-decoration: none;
      color: #000;
      font-weight: 700;
      font-size: 22px;
      transition: color 0.3s;
    }

    .header-right .active,
    .header-right a:hover {
      color: #D32F2F;
    }

    .mySlides {
      display: none;
      width:100%;
       height: 500px;
    }

    .container {
      flex: 1;
      padding: 50px 20px;
    }

    .form-box {
      background-color: #ffffff;
      padding: 40px;
      border-radius: 25px;
      box-shadow: 0 12px 35px rgba(0, 0, 0, 0.1);
      max-width: 90%;
      margin: auto;
    }

    .form-box h1 {
      text-align: center;
      font-size: 30px;
      color: #333;
      margin-bottom: 40px;
    }

    .form-horizontal {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 20px;
    }

    .input-group {
      position: relative;
      width: 22%;
    }

    .input-group i {
      position: absolute;
      top: 50%;
      left: 18px;
      transform: translateY(-50%);
      color: #888;
      font-size: 16px;
    }

    .input-group input {
      width: 100%;
      padding: 14px 16px 14px 45px;
      border-radius: 25px;
      border: 1px solid #ccc;
      background-color: #f7f9fc;
      font-size: 18px;
    }

    .input-group input:focus {
      border-color: #007bff;
      background-color: #fff;
      outline: none;
    }

    .button1 {
      background-color: #D32F2F;
      color: white;
      border: none;
      padding: 16px 45px;
      font-size: 20px;
      font-weight: bold;
      border-radius: 30px;
      cursor: pointer;
      transition: background-color 0.3s ease;
      margin-top: 20px;
    }

    .button1:hover {
      background-color: #FB8072;
    }

    .footer {
      background-color: #ffffff;
      padding: 30px;
      text-align: center;
      font-size: 18px;
      color: #444;
      box-shadow: 0 -2px 12px rgba(0, 0, 0, 0.05);
    }

    @media screen and (max-width: 1024px) {
      .input-group {
        width: 45%;
      }
    }

    @media screen and (max-width: 768px) {
      .input-group {
        width: 90%;
      }
    }

  </style>
</head>
<body>

<!-- HEADER -->
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png" alt="Logo"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<!-- IMAGE SLIDER -->
<div style="max-width:100%">
  <img class="mySlides" src="slide2.png">
</div>
<script>
var myIndex = 0;
carousel();
function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex - 1].style.display = "block";  
  setTimeout(carousel, 2000); 
}
</script>

<!-- FORM -->
<div class="container">
  <div class="form-box">
    <% String msg=request.getParameter("msg");
    if("valid".equals(msg)) { %>
      <center><font color="green" size="4">Form Submitted Successfully. You will get notified within 24 hours.</font></center>
    <% } else if("invalid".equals(msg)) { %>
      <center><font color="red" size="4">Invalid data! Try Again.</font></center>
    <% } %>

    <h1>Enter Your Details to Request for Blood</h1>
    <form action="indexFormAction.jsp" method="post" class="form-horizontal">
      <div class="input-group">
        <i class="fas fa-user"></i>
        <input type="text" name="name" placeholder="Enter Name" required>
      </div>
      <div class="input-group">
        <i class="fas fa-phone"></i>
        <input type="text" name="mobilenumber" placeholder="Mobile Number" required>
      </div>
      <div class="input-group">
        <i class="fas fa-envelope"></i>
        <input type="mail" name="email" placeholder="Email Address" required>
      </div>
      <div class="input-group">
        <i class="fas fa-tint"></i>
        <input type="text" name="bloodgroup" placeholder="Blood Group" required>
      </div>
      <div style="width: 100%; text-align: center;">
        <button class="button1" type="submit">Submit</button>
      </div>
    </form>
  </div>
</div>

<!-- FOOTER -->
<div class="footer">
  All Rights Reserved :: 2025
</div>

</body>
</html>
