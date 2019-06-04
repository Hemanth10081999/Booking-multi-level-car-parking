import pyodbc 
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=WIN10G-EQ706GGU;'
                      'Database=multi level parking;'
                      'Trusted_Connection=yes;')

loc_details={
        1:"[loc_id]",
        2:"[location name]",
        3:"[sector]"
            }

search_type=input("search by id: 1\n search by name: 2\n search by sector:3\nenter the search by:")

data=input("Enter the search key:")

cursor = conn.cursor()
cursor.execute('select * from [dbo].[location details] where '+loc_details.get(int(search_type))+'='+data)

for row in cursor:
    print(row)