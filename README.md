# 🩸 Blood Bank Management System

A web-based Blood Bank Management System built with *HTML* and *CSS* for the frontend and *JSP* with *MySQL* for the backend. This system helps manage donor information, blood stock, blood requests, and overall blood bank operations efficiently.

---

## 🛠️ Tech Stack

- *Frontend*: HTML, CSS
- *Backend*: JSP (Java Server Pages)
- *Database*: MySQL

---

## 🚀 Features

- Donor registration and management
- Blood donation tracking
- Blood request management
- Real-time blood stock levels
- Admin panel for managing donors, requests, and inventory
- Search by blood group and availability

---

## 💾 Database Configuration

1. Create a MySQL database named bloodbank.
2. Import the bloodbank.sql file from the /database folder to set up tables.
3. Update your connection.jsp file with your MySQL credentials:

<%
String url = "jdbc:mysql://localhost:3306/bloodbank";
String username = "root";
String password = "your_password";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(url, username, password);
%>

---

## 🧪 How to Run the Project
Clone or download the project repository.

Set up your MySQL database using the provided SQL file.

Deploy the project on a JSP-supported server like Apache Tomcat.

Access the application via your browser:

http://localhost:8080/BloodBankManagementSystem/

---

#🔐 Admin Credentials (Default)
Username: admin  
Password: admin123
⚠️ Note: Change these credentials in the database after first login for security.

---

#📸 Screenshots
Add screenshots of homepage, admin dashboard, donor form, etc.

---

#📌 Future Enhancements
Email notifications for blood requests

Mobile responsiveness

Donor eligibility check system

Multi-role authentication (admin, hospital, donor)

---

#📃 License
This project is open-source and available under the MIT License.

---

#🤝 Contributing
Pull requests and bug reports are welcome!
If you’d like to improve the project, feel free to fork the repository and submit a pull request.
