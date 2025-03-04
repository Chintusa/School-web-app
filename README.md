# School Management System

## 📌 Project Overview

The **School Management System** is a web-based application built with Java and J2EE technologies. It enables schools to manage student records, staff details, and administrative operations efficiently.

## 🚀 Features

- 🏫 **Student & Staff Management**: Add, update, delete student and staff records.
- 🔑 **Role-Based Authentication**: Secure login for admins, teachers, and students.
- 📧 **Email Notifications**: Uses JavaMail API to send updates.
- 📊 **Dashboard & Reports**: Displays student performance and school statistics.
- 🔍 **Search & Filter**: Easily find students, staff, and courses.
- 💾 **Database Integration**: MySQL for persistent data storage.
- 🖥 **User-Friendly UI**: Built with HTML, CSS, and JavaScript.

## 🛠 Tech Stack

- **Backend:** Java, J2EE, JSP, Servlets
- **Frontend:** HTML, CSS, JavaScript
- **Database:** MySQL
- **Email Service:** JavaMail API
- **Server:** Apache Tomcat
- **Build Tool:** Maven

## 🔧 Setup & Installation

### Prerequisites:

- JDK 21
- Apache Tomcat 11
- MySQL Database
- Maven (for dependency management)

### Steps to Run:

1. **Clone the repository**
   ```sh
   git clone https://github.com/Chintusa/School-web-app.git
   cd School-web-app
   ```
2. **Configure Database**
   - Import the provided MySQL schema.
   - Update `persistence.xml` with database credentials.
3. **Build the Project**
   ```sh
   mvn clean install
   ```
4. **Deploy on Tomcat**
   - Copy the generated WAR file (`target/school-management-system.war`) to Tomcat’s `webapps/` folder.
   - Start Tomcat and access the app at `http://localhost:8080/school-management-system`

## 🤝 Contributing

Feel free to fork this repository, create a branch, and submit a pull request with your improvements.



Developed by **Jhasaketan** 🚀

