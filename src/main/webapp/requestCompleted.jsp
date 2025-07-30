<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<html>
<head>
<title>Completed Blood Requests</title>
<style>
    body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 90%;
        margin: 40px auto;
    }

    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
    }

    #customers {
        border-collapse: collapse;
        width: 100%;
        background-color: #fff;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
    }

    #customers th, #customers td {
        border: 1px solid #ddd;
        padding: 14px 16px;
        text-align: center;
        font-size: 20px;
    }

    #customers th {
        background-color: #db3434;
        color: white;
        text-transform: uppercase;
    }

    #customers tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    #customers tr:hover {
        background-color: #e0e0e0;
    }

    .no-data {
        text-align: center;
        font-size: 18px;
        color: #888;
        padding: 20px;
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
    <h2>Completed Blood Requests</h2>
    <table id="customers">
        <tr>
            <th>Name</th>
            <th>Mobile Number</th>
            <th>Email</th>
            <th>Blood Group</th>
        </tr>
        <%
        boolean found = false;
        try {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM bloodrequest WHERE status='completed'");
            while (rs.next()) {
                found = true;
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("mobilenumber") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("bloodgroup") %></td>
        </tr>
        <%
            }
            if (!found) {
        %>
        <tr>
            <td colspan="4" class="no-data">No completed requests available.</td>
        </tr>
        <% 
            }
        } catch (Exception e) {
        %>
        <tr>
            <td colspan="4" class="no-data" style="color:red;">Error: <%= e.getMessage() %></td>
        </tr>
        <% } %>
    </table>
</div>

<footer>
    All Rights Reserved @ BTech Days :: 2025
</footer>

</body>
</html>
