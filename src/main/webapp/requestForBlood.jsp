<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.html" %>
<html>
<head>
<title>Pending Blood Requests</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 90%;
        margin: 40px auto;
    }

    h2 {
        text-align: center;
        color: #444;
        margin-bottom: 30px;
    }

    #customers {
        width: 100%;
        border-collapse: collapse;
        background-color: #ffffff;
        box-shadow: 0 0 12px rgba(0, 0, 0, 0.05);
        border-radius: 8px;
        overflow: hidden;
    }

    #customers th, #customers td {
        padding: 14px 18px;
        text-align: center;
        border: 1px solid #ddd;
        font-size: 20px;
    }

    #customers th {
        background-color: #db3434;
        color: #ffffff;
        font-weight: bold;
    }

    #customers tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    #customers tr:hover {
        background-color: #f1f1f1;
    }

    a {
        color: #007BFF;
        text-decoration: none;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
    }

    .no-data {
        text-align: center;
        font-size: 18px;
        color: #888;
        margin-top: 20px;
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
    <h2>Pending Blood Requests</h2>
    <table id="customers">
        <tr>
            <th>Name</th>
            <th>Mobile Number</th>
            <th>Email</th>
            <th>Blood Group</th>
            <th>Mark as Done</th>
            <th>Delete</th>
        </tr>
        <%
        boolean hasData = false;
        try {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM bloodrequest WHERE status='pending'");
            while (rs.next()) {
                hasData = true;
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("mobilenumber") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("bloodgroup") %></td>
            <td><a href="requestForBloodDone.jsp?mobilenumber=<%= rs.getString("mobilenumber") %>">Done</a></td>
            <td><a href="requestForBloodDelete.jsp?mobilenumber=<%= rs.getString("mobilenumber") %>">Delete</a></td>
        </tr>
        <%
            }
            if (!hasData) {
        %>
        <tr>
            <td colspan="6" class="no-data">No pending blood requests at the moment.</td>
        </tr>
        <% 
            }
        } catch (Exception e) {
        %>
        <tr>
            <td colspan="6" style="color:red;">Error: <%= e.getMessage() %></td>
        </tr>
        <% } %>
    </table>
</div>

<footer>
    All Rights Reserved @ BTech Days :: 2025
</footer>
</body>
</html>
