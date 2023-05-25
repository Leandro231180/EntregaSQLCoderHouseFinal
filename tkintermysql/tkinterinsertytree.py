import tkinter as tk
from tkinter import *
from tkinter import ttk
import mysql.connector

root = Tk()
root.title("Search, Filter And Display Data")

connexion= mysql.connector.connect(host="localhost",
  user="heman",
  password="greyskull",
  database="proyectosql",
  port="3306")
c = connexion.cursor()

bkg = "grey"

frame = tk.Frame(root, bg=bkg)

options = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z']
selected = StringVar(frame)
selected.set(options[0])

combobox = ttk.Combobox(frame, textvariable=selected, values=options,
                        font=('verdana',14))

trv = ttk.Treeview(frame, columns=(1,2,3,4,5), height=15, show="headings")

trv.column(1, anchor=CENTER, stretch=NO, width=100)
trv.column(2, anchor=CENTER, stretch=NO, width=100)
trv.column(3, anchor=CENTER, stretch=NO, width=100)
trv.column(4, anchor=CENTER, stretch=NO, width=100)
#trv.column(5, anchor=CENTER, stretch=NO, width=100)

trv.heading(1, text="First Name")
trv.heading(2, text="Last Name")
trv.heading(3, text="Email")
trv.heading(4, text="Age")
#trv.heading(5, text=)

def displayData():
    c.execute('SELECT * FROM prueba2 ')
    users = c.fetchall()

    for user in users:
        trv.insert('','end', value=(user[0], user[1], user[2], user[3]))

def search(eventObject):
    # clear treeview
    for item in trv.get_children():
        trv.delete(item)

    val = combobox.get()
    c.execute("""SELECT * FROM prueba2 WHERE NOMBRE LIKE %s or 
               APELLIDO like %s""",("%"+val+"%","%"+val+"%"))
    users = c.fetchall()

    for row in users:
        trv.insert('',END, values=row)

combobox.bind("<<ComboboxSelected>>", search)

combobox.grid(row=0, column=0)
trv.grid(row=1, column=0)

frame.grid(row=0, column=0)

#crea un segundo cuadro
frame2=tk.Frame(root, bg=bkg)

#crea los entry y los labels dentro del frame2

label_firstname = tk.Label(frame2, text="Nombre: ",font=('verdana',12), bg=bkg )
entry_firstname = tk.Entry(frame2, font=('verdana',12))

label_lastname = tk.Label(frame2, text="Last Name: ", font=('verdana',12), bg=bkg)
entry_lastname = tk.Entry(frame2, font=('verdana',12))

label_email = tk.Label(frame2, text="Email: ", font=('verdana',12), bg=bkg)
entry_email = tk.Entry(frame2, font=('verdana',12))

label_age = tk.Label(frame2, text="Age: ", font=('verdana',12), bg=bkg)
entry_age = tk.Entry(frame2, font=('verdana',12))

#crea la funcion para insertar los datos en la tabla prueba2
def insertData():
    firstname = entry_firstname.get()
    lastname = entry_lastname.get()
    email = entry_email.get()
    age = entry_age.get()

    insert_query = "INSERT INTO prueba2 (NOMBRE, APELLIDO, email, edad) VALUES (%s,%s,%s,%s)"
    vals = (firstname,lastname,email,age)
    c.execute(insert_query,vals)
    connexion.commit()
    
    firstname = entry_firstname.get()
    lastname = entry_lastname.get()
    email = entry_email.get()
    age = entry_age.get()
    

# Boton de insertar datos
button_insert = tk.Button(frame, text="Insert", font=('verdana',14), bg='orange',
                          command = insertData)

#grid de labels y entrys

label_firstname.grid(row=0,column=0,sticky='e')
entry_firstname.grid(row=0,column=1, pady=10, padx=10)

label_lastname.grid(row=1, column=0)
entry_lastname.grid(row=1, column=1, pady=10, padx=10)

label_email.grid(row=2, column=0, sticky='e')
entry_email.grid(row=2, column=1, pady=10, padx=10)

label_age.grid(row=3, column=0, sticky='e')
entry_age.grid(row=3, column=1, pady=10, padx=10,)

button_insert.grid(row=4,column=0, columnspan=2, pady=10, padx=10, sticky='nsew')

frame2.grid(row=1, column=0)

displayData()

root.mainloop()