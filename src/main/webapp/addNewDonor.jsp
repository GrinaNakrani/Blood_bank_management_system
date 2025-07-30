<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.*" %>
<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.Connection" %>
<%@ include file="header.html" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add New Donor</title>
  
  <style>
    body {
      background-color: rgb(234, 213, 213);
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    .container {
      max-width: 700px;
      margin: 60px auto;
      background: white;
      padding: 30px;
      border-radius: 20px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
    }

    h1, h2 {
      color: #333;
      margin-bottom: 20px;
    }

    input[type="text"],
    input[type="email"],
    input[type="number"],
    input[type="password"],
    select {
      width: 100%;
      padding: 15px;
      border-radius: 12px;
      border: 1px solid #ccc;
      background: #f0f0f0;
      margin-bottom: 20px;
      font-size: 16px;
    }
    
    .formFont{
    	font-size : 1.5rem;
    }

    .button {
      background:#D32F2F;
      color: white;
      border: none;
      padding: 14px 35px;
      font-size: 18px;
      font-weight: 600;
      border-radius: 30px;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .button:hover {
      background: #FB8072;
      transform: scale(1.05);
    }

    .status-message {
      text-align: center;
      font-size: 22px;
      font-weight: bold;
      margin-top: 20px;
      color: #D32F2F ;
    }

    footer {
            text-align: center;
            padding: 30px;
            font-size: 16px;
            color: #666;
        }

  </style>
</head>
<body>

<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) {
%>
<div class="status-message"><br>Successfully Updated</div>
<%
} else if ("invalid".equals(msg)) {
%>
<div class="status-message">Something went wrong! Try again!</div>
<%
}
int id = 1;
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select max(id) from donor");
    if (rs.first()) {
        id = rs.getInt(1) + 1;
    }
%>
<div class="container">
  <h1 class="text-danger">Donor ID: <%= id %></h1>
  <form action="addNewDonorAction.jsp" method="post">
    <input type="hidden" name="id" value="<%= id %>">
    
    <h2 class="formFont">Name</h2>
    <input type="text" placeholder="Enter Name" name="name" required>

    <h2 class="formFont">Father Name</h2>
    <input type="text" placeholder="Enter Father Name" name="father" required>

    <h2 class="formFont">Mother Name</h2>
    <input type="text" placeholder="Enter Mother Name" name="mother" required>

    <h2 class="formFont">Mobile Number</h2>
    <input type="text" placeholder="Enter Mobile Number" name="mobilenumber" required>

    <h2 class="formFont">Gender</h2>
    <select name="gender" required>
      <option value="">Select Gender</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
      <option value="Others">Others</option>
    </select>

    <h2 class="formFont">Email</h2>
    <input type="email" placeholder="Enter Email" name="email" required>

    <h2 class="formFont">Blood Group</h2>
    <select name="bloodgroup" required>
      <option value="">Select Blood Group</option>
      <option value="A+">A+</option>
      <option value="A-">A-</option>
      <option value="B+">B+</option>
      <option value="B-">B-</option>
      <option value="O+">O+</option>
      <option value="O-">O-</option>
      <option value="AB+">AB+</option>
      <option value="AB-">AB-</option>
    </select>

    <h2 class="formFont">Address</h2>
    <input type="text" placeholder="Enter Address" name="address" required>

    <div class="text-center mt-4">
      <button type="submit" class="button">Save</button>
    </div>
  </form>
</div>
<%
} catch (Exception e) {
  e.printStackTrace();
}
%>

<footer>
  <p>All Rights Reserved :: 2025</p>
</footer>

</body>
</html>
