# Coonecting to the database Server
con = connect.sql.connect(
    host="localhoet",
    user="root",
    password="12345",
)

# Creating database
database_name ="salesDB"
cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
print(f"Database '{database_name}' created successfully")


# Close the connection
cursor.close()
con.close()


# Creating database demo
database_name ="demoDB",
cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
print(f"Database '{database_name}' created successfully")


# Dropping database demoDB
cursor = con.execute(f"DROP DATABASE IF EXISTS demoDB")
print("Database 'demoDB' dropped successfully")