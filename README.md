🏥 Pharmacy Management System (Python + MySQL)

A simple, command-line interface (CLI) application for managing pharmacy operations, built using Python for the business logic and MySQL for persistent data storage.

This project enables efficient execution of fundamental CRUD (Create, Read, Update, Delete) operations across medicine, prescription, and billing records.

📌 Features

The application provides a structured menu for performing the following management tasks:

Feature

Description

1. Add Medicine

Inserts new medicine details (ID, Name, Manufacturer, Price, Expiry Date, Stock) into the database.

2. Delete Medicine

Removes a medicine record from the database using its unique ID.

3. Update Stock

Modifies the current stock quantity for any existing medicine.

4. Search Medicine

Allows searching for medicines using partial or full names via the SQL LIKE query.

5. View All Medicines

Displays all records currently stored in the Medicine table.

6. View All Prescriptions

Displays all records from the Prescription table.

7. View All Billing

Displays all records from the Billing table.

🗄️ Database Structure (MySQL)

This project requires a database named PROJ. The main medicine management table must be created with the following schema:

Column

Type

Constraints

Description

med_id

INT

Primary Key (PK)

Unique identifier for the medicine.

name

VARCHAR



Name of the medicine.

manufacturer

VARCHAR



Name of the producing company.

price

FLOAT



Unit price of the medicine.

expiry

DATE



Expiry date.

stock_quantity

INT



Current available stock.

(Note: The full SQL code for creating the required tables is included in the PROJ.sql file.)

🛠️ Technologies Used

Python 3.x

MySQL Database (for persistent storage)

mysql-connector-python (Python library for MySQL connectivity)

CLI-based Interface

🚀 How to Run This Project

Follow these steps to set up and run the Pharmacy Management System on your local machine:

1. Clone the Repository

git clone [https://github.com/senscoding/Pharmacy-Management-System-Python-MySQL.git](https://github.com/senscoding/Pharmacy-Management-System-Python-MySQL.git)
cd Pharmacy-Management-System-Python-MySQL


2. Install Required Python Package

Install the necessary Python library for connecting to MySQL:

pip install mysql-connector-python


3. Import the SQL File

Use your preferred MySQL client (Workbench, phpMyAdmin, or command line) to import the database schema:

-- Open your MySQL client and run the following command to set up the database structure:
SOURCE PROJ.sql;


4. Update Database Credentials

Open the main application file, proj.py, and update the connection parameters with your local MySQL credentials:

# Inside proj.py, update the connection details
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password_here",  # <-- Replace with your MySQL password
    database="PROJ"
)


5. Run the Project

Execute the Python application from your terminal:

python proj.py


📸 Screenshot

Here is a visual representation of the system's interface:

📂 Project Structure

│
├── proj.py        # Main Python application logic and CLI menu
├── PROJ.sql       # Database schema creation and sample data
├── ss.jpeg        # Screenshot of the system in action
└── README.md      # This guide


💡 Future Improvements

Potential enhancements for the project include:

Developing a GUI (Graphical User Interface) using libraries like Tkinter or PyQt.

Implementing a role-based login system (e.g., Admin vs. Pharmacist).

Adding automated medicine expiry alerts.

Generating professional invoice PDF reports for billing.



