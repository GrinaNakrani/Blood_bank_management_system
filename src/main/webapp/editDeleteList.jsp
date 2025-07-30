<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<html>
<head>
<title>Donor Records</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 95%;
        margin: auto;
        padding: 30px 0;
    }

    h2 {
        text-align: center;
        color: #444;
        margin-bottom: 20px;
    }

    .message {
        text-align: center;
        font-size: 20px;
        color: green;
        margin: 10px 0;
    }

    .error {
        color: #D32F2F;
    }

    #customers {
        width: 100%;
        border-collapse: collapse;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
        background-color: #fff;
        border-radius: 10px;
        overflow: hidden;
    }

    #customers th, #customers td {
        border: 1px solid #ddd;
        padding: 12px 15px;
        font-size: 20px;
        text-align: center;
    }

    #customers th {
        background-color: #e85858;
        color: white;
    }

    #customers tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    #customers tr:hover {
        background-color: #e0e0e0;
    }

    a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
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
<div class="container">
    <h2>Donor Details</h2>
    <% 
    String msg = request.getParameter("msg");
    if ("valid".equals(msg)) {
    %>
        <div class="message">Successfully Updated</div>
    <% } else if ("invalid".equals(msg)) { %>
        <div class="message error">Something went wrong! Try Again</div>
    <% } else if ("deleted".equals(msg)) { %>
        <div class="message">Successfully Deleted</div>
    <% } %>

    <table id="customers">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Father Name</th>
            <th>Mother Name</th>
            <th>Mobile Number</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Blood Group</th>
            <th>Address</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <%
        try {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from donor");
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
            <td><%= rs.getString(5) %></td>
            <td><%= rs.getString(6) %></td>
            <td><%= rs.getString(7) %></td>
            <td><%= rs.getString(8) %></td>
            <td><%= rs.getString(9) %></td>
            <td><a href="updateDonor.jsp?id=<%= rs.getInt(1) %>">Edit</a></td>
            <td><a href="deleteDonor.jsp?id=<%= rs.getInt(1) %>">Delete</a></td>
        </tr>
        <%
            }
        } catch(Exception e) {
            System.out.println(e);
        }
        %>
    </table>
</div>
<footer>
    All Rights Reserved @ BTech Days :: 2025
</footer>
</body>
</html>
