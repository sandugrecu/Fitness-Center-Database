# FitnessCenter Database

This project is a database system designed to manage the day-to-day operations of a fitness center. It provides essential features such as client subscriptions, training session scheduling, payments tracking, equipment management, and trainer coordination. The goal is to streamline administrative tasks and improve the overall management process for fitness centers.

## 📸 Preview

<p align="center">
  <img src="https://drive.google.com/uc?export=view&id=1rF0bP70JQA_7SYE3LUS0rnpipqBsTAOd" width="400" />
</p>

## Key Features

- **Client Management**: Store and manage client information, subscription status, and training history.
- **Trainer Scheduling**: Schedule and assign trainers to clients, track availability, and manage training sessions.
- **Subscription & Payment Tracking**: Support for multiple subscription types (monthly, yearly, group, individual), with automated payment tracking and reminders.
- **Training Sessions**: Organize and manage training sessions, including activities, client attendance, and trainer assignments.
- **Equipment Management**: Track gym equipment status (functional, under repair) and monitor usage.
- **Supplier Management**: Manage supplier details and track equipment orders.

## 📜 Scripts

- **`create_tables.sql`**: Creates the `FitnessCenter` database and all necessary tables.
- **`add_data.sql`**: Inserts sample data into the tables to help with testing and development.

## 🚀 How to Use

### 1. Create the Database and Tables
   - Open your preferred SQL client (e.g., **SQL Server Management Studio (SSMS)**).
   - Connect to your database server.
   - Open the `create_tables.sql` script.
   - Execute the script to create the `FitnessCenter` database and its corresponding tables.

### 2. Insert Data into the Database
   - Open the `add_data.sql` file.
   - Execute the script to populate the database with sample data for testing.
   - This will insert initial data into the tables, allowing you to test the system and simulate real-world usage.

## 🛠️ Requirements

- **SQL Server** (or any database system that supports the syntax used in the scripts)
- A database management tool (e.g., **SSMS**, **MySQL Workbench**, or any SQL client compatible with your server)

## ⚠️ Notes

- The `add_data.sql` file contains sample data. You may need to modify it to suit your specific requirements.
- If using a different SQL server (like MySQL), ensure the SQL syntax is compatible with your system's configuration.