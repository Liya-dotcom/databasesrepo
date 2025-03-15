# Coonecting to the database Server
con = connect.sql.connect(
    host="localhost",
    user="root",
    password="12345",
)

# Creating a cursor object 
cursor = con.cursor()

# Creating database
database_name ="salesDB"
cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
print(f"Database '{database_name}' created successfully")


# Close the connection
cursor.close()
con.close()


# Reconneting to the database
con = connect.sql.connect(
    host="localhost",
    user="root",
    password="12345"
)

# Creating a cursor object
cursor  = conn.cursor()

# Creating database demo
database_name ="demoDB",
cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
print(f"Database '{database_name}' created successfully")


# Dropping database demoDB
cursor = con.execute(f"DROP DATABASE IF EXISTS demoDB")
print("Database 'demoDB' dropped successfully")

# Close the cursor and connection
cursor.close()
conn.close()