#Melakukan import mysql connector
import mysql.connector

#Melakukan percobaan koneksi
conn = mysql.connector.connect(
    host="local_host",
    user="username",
    password="user_password",
    database="user_database")

#Membuat object cursor sebagai penanda
cursor = conn.cursor()

#Deklarasi SQL Query untuk memasukan record ke DB (KARYAWAN)
sql = "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME) VALUES (%s,%s,%d,%s,%d)"
values = ("Ivan", "Aditama", 21, "Laki", 7500000)

try:
    #Eksekusi SQL Command
    cursor.execute(sql, values)
    #Melakukan perubahan (commit) pada DB
    conn.commit()
except:
    #Roll back apabila ada issue
    conn.rollback()

#Menutup koneksi
conn.close()