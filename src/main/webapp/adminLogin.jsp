<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
  <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Raleway', sans-serif;
    }

    body {
      background: linear-gradient(135deg, #e0eafc, #cfdef3);
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
      color: #FB8072;
      font-weight: 700;
      font-size: 22px;
      transition: color 0.3s;
    }

    .header-right .active,
    .header-right a:hover {
      color: #D32F2F;
    }

    .container {
      flex: 1;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 60px 20px;
    }

    .login-box {
      background-color: #ffffff;
      padding: 60px 70px;
      border-radius: 30px;
      box-shadow: 0 12px 40px rgba(0,0,0,0.15);
      max-width: 600px;
      width: 100%;
    }

    .login-box h2 {
      text-align: center;
      font-size: 36px;
      color: #333;
      margin-bottom: 40px;
    }

    .input-group {
      position: relative;
      margin-bottom: 30px;
    }

    .input-group i {
      position: absolute;
      left: 20px;
      top: 50%;
      transform: translateY(-50%);
      color: #888;
      font-size: 20px;
    }

    .input-group input {
      width: 100%;
      padding: 18px 20px 18px 55px;
      border-radius: 35px;
      border: 1px solid #ccc;
      background-color: #f7f9fc;
      font-size: 18px;
      transition: all 0.3s ease;
    }

    .input-group input:focus {
      outline: none;
      border-color: #007bff;
      background-color: #fff;
    }

    .button {
      width: 100%;
      padding: 16px;
      font-size: 20px;
      background-color: #D32F2F; 	 	
      border: none;
      border-radius: 35px;
      font-weight: 600;
      cursor: pointer;
      transition: background 0.3s ease;
     color: white;
    }

    .button:hover {
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

    @media (max-width: 600px) {
      .header {
        flex-direction: column;
        height: auto;
        padding: 25px;
      }

      .header-right a {
        font-size: 18px;
        margin: 10px 0;
      }

      .login-box {
        padding: 40px 25px;
      }

      .login-box h2 {
        font-size: 28px;
      }

      .input-group input {
        font-size: 16px;
      }

      .button {
        font-size: 18px;
      }
    }
  </style>
</head>
<body>

<!-- HEADER -->
<div class="header">
  <a href="#default" class="logo">
    <img src="Logo1.png" alt="Logo">
  </a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<!-- LOGIN FORM -->
<div class="container">
  <div class="login-box">
    <% String msg=request.getParameter("msg");
    if("invalid".equals(msg)) {
    %>
    <center><font color="red" size="4">Invalid Username/Password</font></center>
    <% } %>

    <h2>Admin Login</h2>
    <form action="adminLoginAction.jsp" method="post">
      <div class="input-group">
        <i class="fas fa-user"></i>
        <input type="text" name="username" placeholder="Enter Username" required>
      </div>
      <div class="input-group">
        <i class="fas fa-lock"></i>
        <input type="password" name="password" placeholder="Enter Password" required>
      </div>
      <button type="submit" class="button">Login</button>
    </form>
  </div>
</div>

<!-- FOOTER -->
<div class="footer">
  All Rights Reserved @ BTech Days :: 2025
</div>

</body>
</html>
