# 🩸 Blood Bank Management System

A *web-based Blood Bank Management System* designed to streamline the process of managing blood donors, blood stock, and requests. Built using *HTML* and *CSS* for the frontend, *JSP (Java Server Pages)* for server-side processing, and *MySQL* for the database.

---

## 🛠️ Tech Stack

- *Frontend*: HTML, CSS  
- *Backend*: JSP (Java Server Pages)  
- *Database*: MySQL  

---

## 🚀 Features

- ✅ Donor registration and management  
- 💉 Track blood donations  
- 📝 Manage blood requests  
- 📊 Real-time blood stock monitoring  
- ⚙️ Admin panel for managing donors, requests, and inventory  
- 🔍 Search functionality by blood group and availability  

---

## 💾 Database Configuration

1. Open *phpMyAdmin* or your preferred MySQL interface.
2. Create a new database named bloodbank.
3. Import the bloodbank.sql file from the /database folder to set up the necessary tables.
4. Update your database connection in connection.jsp:


   <% String url = "jdbc:mysql://localhost:3306/bloodbank";
   
   String username = "root";
   
   String password = "your_password";
   
   Class.forName("com.mysql.jdbc.Driver");
   
   Connection conn = DriverManager.getConnection(url, username, password);
   
   %>
   
   ---
## 🧪 How to Run the Project
Clone or download this repository.

Set up MySQL using the instructions above.

Deploy the project in a JSP-supported server such as Apache Tomcat.

Start your server and access the application via:
http://localhost:8080/BloodBankManagementSystem/

## 🔐 Default Admin Credentials

Username: admin

Password: admin123

⚠️ For security, please change these credentials in the database after the first login.

---

## 📸 Screenshots

## Homepage

## Donor registration form

## Blood request form

## Admin dashboard

## Blood stock status page

----

## 📌 Future Enhancements

📧 Email notifications for new blood requests

📱 Mobile responsive design

✅ Donor eligibility check system

🔒 Multi-role authentication (Admin, Donor, Hospital Staff)

📆 Donation history and reminders

----

## 📃 License
This project is licensed under the MIT License.
Feel free to use, modify, and distribute it as per the license terms.

---

## 🤝 Contributing
We welcome contributions! Here's how you can help:

Fork the repository

Create a new branch (git checkout -b feature-name)

Make your changes

Submit a pull request

For any issues or suggestions, feel free to open an Issue.
