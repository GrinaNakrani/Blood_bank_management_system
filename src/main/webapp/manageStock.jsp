<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.html" %>

<html>
<head>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen">
    <style>
        body {
            background-color: #f9f9f9;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        .main-container {
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            padding: 30px;
            gap: 40px;
            margin : 90px;
            flex-wrap: wrap;
        }

        .form-card {
            background-color: #fff;
            width: 45%;
            padding: 30px 40px;
            border-radius: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .form-group label {
            display: block;
            font-size: 20px;
            color: #333;
            margin-bottom: 8px;
            margin-top: 20px;
        }

        select, input[type="text"] {
            width: 100%;
            padding: 10px 16px;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 20px;
            background-color: #f2f2f2;
            font-size: 20px;
        }

        .button {
            background-color: #D32F2F;
            color: white;
            padding: 10px 24px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-size: 20px;
            display: block;
            margin: 25px auto 0;
        }

        .button:hover {
            background-color: #B71C1C;
        }

        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
            font-size:20px;
        }

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #db3434;
            color: white;
        }

        .table-wrapper {
            width: 45%;
           
            padding: 20px;
            border-radius: 20px;
            
        }

        .msg {
            text-align: center;
            font-size: 20px;
            padding: 10px;
        }

        .msg.error {
            color: red;
        }

        .msg.success {
            color: green;
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
        if ("invalid".equals(msg)) {
    %>
    <div class="msg error">Something went wrong! Try Again!</div>
    <%
        } else if ("valid".equals(msg)) {
    %>
    <div class="msg success">Successfully Updated</div>
    <%
        }
    %>

    <div class="main-container">
        <!-- Form Section -->
        <div class="form-card">
            <form action="manageStockAction.jsp" method="post" class="form-group">
                <label for="bloodgroup">Select Blood Group</label>
                <select name="bloodgroup" id="bloodgroup">
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                </select>

                <label for="incdec">Select Increase/Decrease</label>
                <select name="incdec" id="incdec">
                    <option value="inc">Increase</option>
                    <option value="dec">Decrease</option>
                </select>

                <label for="units">Units</label>
                <input type="text" placeholder="Enter Units" name="units" id="units">

                <button type="submit" class="button">Save</button>
            </form>
        </div>

        <!-- Table Section -->
        <div class="table-wrapper">
            <table id="customers">
                <tr>
                    <th>Blood Group</th>
                    <th>Units</th>
                </tr>
                <%
                    try {
                        Connection conn = ConnectionProvider.getCon();
                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery("SELECT * FROM stock");
                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        out.println("Error: " + e);
                    }
                %>
            </table>
        </div>
    </div>

    <footer>
        All Rights Reserved @ BTech Days :: 2025
    </footer>
</body>
</html>

