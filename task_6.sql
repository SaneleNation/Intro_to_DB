import mysql.connector
import sys


# Establish database connection
conn = mysql.connector.connect(
    host="localhost",    
    user="root",         
    password="arLM78@/.-",  
    database=alx_book_store
)
cursor = conn.cursor()

# SQL query for inserting multiple rows
sql = """
INSERT INTO customer (customer_id, customer_name, email, address) 
VALUES (%s, %s, %s, %s)
"""

# Data to insert
values = [
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '124 Happiness  Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '124 Happiness  Ave.')
]

# Execute the query
cursor.executemany(sql, values)

# Commit and close
conn.commit()
print(cursor.rowcount, "records inserted.")

cursor.close()
conn.close()
