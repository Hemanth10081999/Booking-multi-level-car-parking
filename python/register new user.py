import pyodbc 
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=WIN10G-EQ706GGU;'
                      'Database=multi level parking;'
                      'Trusted_Connection=yes;')


print("Welcome to register a new user:\n")
firstname=input("enter your first name:")
lastname=input("enter your last name(press enter to skip):")
mailid=input("enter a valid mail-id:")
phone=input("enter a valid phone number:")
password=input("enter password:")
job=input("enter date of birth(press enter to skip):")
gender=input("enter m/f (press enter to skip):")
companyname=input("enter company name(press enter to skip)")
address=input("enter address(press enter to skip)")
city=input("enter city(press enter to skip)")
pin=input("enter pin(press enter to skip)")
walletbalance=100


cursor = conn.cursor()
cursor.execute("insert into [dbo].[login] ([FirstName],[LastName],[mailid],[phone],[password],[DOB],[gender],[company name],[address],[city],[pin],[wallet balance]) values('"+firstname+"','"+lastname+"','"+mailid+"','"+phone+"','"+password+"','"+job+"','"+gender+"','"+companyname+"','"+address+"','"+city+"','"+pin+"',100)")
cursor.commit()
