<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Donor</title>
<style>
    body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    .container {
        background-color: #fff;
        border-radius: 12px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        max-width: 700px;
        margin: 60px auto;
        padding: 40px;
        
    }

    h1 {
        font-size: 35px;
        color:#333 ;
        text-align: center;
        margin-bottom: 30px;
    }

    h2 {
       font-size : 1.5rem;
        color: #444;
        margin-bottom: 5px;
    }

    .form-group {
        margin-bottom: 35px;
    }

    input[type="text"], input[type="email"] {
        width: 100%;
        padding: 12px;
        font-size: 18px;
        background: #f1f1f1;
        border: 1px solid #ccc;
        border-radius: 8px;
        transition: all 0.3s ease;
    }

    input:focus {
        outline: none;
        background-color: #fff;
        border-color: #28a745;
        box-shadow: 0 0 5px rgba(40, 167, 69, 0.4);
    }

    .button {
        background-color: #D32F2F;
        border: none;
        color: white;
        padding: 12px 30px;
        font-size: 20px;
        border-radius: 25px;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 20px;
    }

    .button:hover {
        background-color: #FB8072;
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
String id = request.getParameter("id");
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM donor WHERE id='" + id + "'");
    if (rs.next()) {
%>

<div class="container">
    <form action="updateDonorAction.jsp" method="post">
        <input type="hidden" name="id" value="<%= id %>">
        <h1>Update Donor Details</h1>

        <div class="form-group">
            <h2>Name</h2>
            <input type="text" value="<%= rs.getString(2) %>" name="name">
        </div>

        <div class="form-group">
            <h2>Father Name</h2>
            <input type="text" value="<%= rs.getString(3) %>" name="father">
        </div>

        <div class="form-group">
            <h2>Mother Name</h2>
            <input type="text" value="<%= rs.getString(4) %>" name="mother">
        </div>

        <div class="form-group">
            <h2>Mobile Number</h2>
            <input type="text" value="<%= rs.getString(5) %>" name="mobilenumber">
        </div>

        <div class="form-group">
            <h2>Email</h2>
            <input type="email" value="<%= rs.getString(7) %>" name="email">
        </div>

        <div class="form-group">
            <h2>Address</h2>
            <input type="text" value="<%= rs.getString(9) %>" name="address">
        </div>

        <center><button type="submit" class="button">Save</button></center>
    </form>
</div>

<%
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>

<footer>
    All Rights Reserved @ BTech Days :: 2025
</footer>

</body>
</html>
