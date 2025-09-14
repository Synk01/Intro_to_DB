import mysql.connector
from mysql.connector import errorcode

# Database connection details
DB_HOST = 'localhost'
DB_USER = 'your_username'
DB_PASSWORD = 'your_password'

# Name of the database to be created
DB_NAME = 'alx_book_store'

try:
    # Establish a connection to the MySQL server
    conn = mysql.connector.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD
    )

    # Create a cursor object to execute SQL queries
    cursor = conn.cursor()

    # SQL query to create the database if it doesn't exist
    create_db_query = f"CREATE DATABASE IF NOT EXISTS {DB_NAME}"

    # Execute the query
    cursor.execute(create_db_query)

    print(f"Database '{DB_NAME}' created successfully!")

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Error: Access denied. Check your username and password.")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Error: Database does not exist.")
    else:
        print(f"Error: {err}")

finally:
    # Close the cursor and connection if they were successfully created
    if 'cursor' in locals() and cursor is not None:
        cursor.close()
    if 'conn' in locals() and conn is not None:
        conn.close()
