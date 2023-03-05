import pandas as pd
import numpy as np
import mysql.connector

# Connect to the MySQL database
mydb = mysql.connector.connect(
  host="127.0.0.1",
  port="3307",
  user="root",
  password="root",
  database="assignment"
)

# Create the stats table
cursor = mydb.cursor()
cursor.execute("CREATE TABLE IF NOT EXISTS stats (id INT PRIMARY KEY, is_tv_subscriber INT, is_movie_package_subscriber INT, subscription_age FLOAT, bill_avg_in_dollar FLOAT, remaining_contract FLOAT, service_failure_count INT, download_avg FLOAT, upload_avg FLOAT, download_over_limit INT)")

# Create the address table
cursor.execute("CREATE TABLE IF NOT EXISTS address (id INT PRIMARY KEY, area VARCHAR(255))")

# Insert data into the stats table
stats_df = pd.read_excel('assignment12.xlsx', sheet_name='stats')
stats_df = stats_df.replace(np.nan, 0)
insert_query = "INSERT INTO stats (id, is_tv_subscriber, is_movie_package_subscriber, subscription_age, bill_avg_in_dollar, remaining_contract, service_failure_count, download_avg, upload_avg, download_over_limit) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
values = stats_df.values.tolist()
cursor.executemany(insert_query, values)
mydb.commit()

# Insert data into the address table
address_df = pd.read_excel('assignment12.xlsx', sheet_name='address')
address_df = address_df.replace(np.nan, 0)
insert_query = "INSERT INTO address (id, area) VALUES (%s, %s)"
values = address_df.values.tolist()
cursor.executemany(insert_query, values)
mydb.commit()

# Create a view by joining the stats and address tables

cursor.execute("CREATE VIEW final_table AS SELECT aa.id, aa.area, ss.is_tv_subscriber, ss.is_movie_package_subscriber, ss.subscription_age, ss.bill_avg_in_dollar, ss.remaining_contract, ss.service_failure_count, ss.download_avg, ss.upload_avg, ss.download_over_limit FROM stats ss INNER JOIN address aa ON aa.id = ss.id;")



# Close the database connection
mydb.close()
