import mysql.connector

# Connect to your MySQL database
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root2003sen$",
    database="PROJ"
)
cursor = conn.cursor()

def add_medicine():
    med_id = int(input("Enter Medicine ID: "))
    name = input("Enter Name: ")
    manufacturer = input("Enter Manufacturer: ")
    price = float(input("Enter Price per Unit: "))
    expiry = input("Enter Expiry Date (YYYY-MM-DD): ")
    stock = int(input("Enter Stock Quantity: "))
    cursor.execute("INSERT INTO Medicine VALUES (%s, %s, %s, %s, %s, %s)",
                   (med_id, name, manufacturer, price, expiry, stock))
    conn.commit()
    print("Medicine added successfully.\n")

def delete_medicine():
    med_id = int(input("Enter Medicine ID to delete: "))
    cursor.execute("DELETE FROM Medicine WHERE med_id = %s", (med_id,))
    conn.commit()
    print("Medicine deleted successfully.\n")

def update_stock():
    med_id = int(input("Enter Medicine ID to update stock: "))
    new_stock = int(input("Enter new stock quantity: "))
    cursor.execute("UPDATE Medicine SET stock_quantity = %s WHERE med_id = %s", (new_stock, med_id))
    conn.commit()
    print("Stock updated.\n")

def search_medicine():
    name = input("Enter medicine name to search: ")
    cursor.execute("SELECT * FROM Medicine WHERE name LIKE %s", ('%' + name + '%',))
    result = cursor.fetchall()
    for row in result:
        print(row)
    print()

def view_all(table_name):
    cursor.execute(f"SELECT * FROM {table_name}")
    result = cursor.fetchall()
    for row in result:
        print(row)
    print()

def main():
    while True:
        print("\n===== Pharmacy Management System =====")
        print("1. Add Medicine")
        print("2. Delete Medicine")
        print("3. Update Medicine Stock")
        print("4. Search Medicine by Name")
        print("5. View All Medicines")
        print("6. View All Prescriptions")
        print("7. View All Billing")
        print("0. Exit")

        choice = input("Enter your choice: ")

        if choice == '1':
            add_medicine()
        elif choice == '2':
            delete_medicine()
        elif choice == '3':
            update_stock()
        elif choice == '4':
            search_medicine()
        elif choice == '5':
            view_all("Medicine")
        elif choice == '6':
            view_all("Prescription")
        elif choice == '7':
            view_all("Billing")
        elif choice == '0':
            print("Exiting...")
            break
        else:
            print("Invalid choice. Try again.")

    cursor.close()
    conn.close()

if __name__ == "__main__":
    main()
