import pyodbc 
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=WIN10G-EQ706GGU;'
                      'Database=multi level parking;'
                      'Trusted_Connection=yes;')


data=input("Enter the slot number to get the details:")

cursor = conn.cursor()
cursor.execute('select * from [dbo].[slot details] where [slot ID]='+data)

for row in cursor:
    print(row)
