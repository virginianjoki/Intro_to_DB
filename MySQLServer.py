import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establish a connection to MySQL server
        connection = mysql.connector.connect(
            host='localhost',
            user='your_username',  # Replace with your MySQL username
            password='your_password'  # Replace with your MySQL password
        )
        
        if connection.is_connected():
            cursor = connection.cursor()

            # Creating the database, use IF NOT EXISTS to avoid failure if it already exists
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
        
    except Error as e:
        print(f"Error connecting to MySQL: {e}")
    
    finally:
        # Ensure the database connection is closed
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")

# Calling the function to create the database
if __name__ == "__main__":
    create_database()
