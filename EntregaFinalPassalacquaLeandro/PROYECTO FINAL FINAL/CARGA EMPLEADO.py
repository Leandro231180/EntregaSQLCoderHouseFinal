import tkinter as tk
from tkinter import *
from tkinter import ttk
import mysql.connector

root = Tk()
root.title("Muestra Productos,Busca productos y Agrega Productos")

connexion= mysql.connector.connect(host="localhost",
  user="MARK25",
  password="romanruler",
  database="proyectofinalleandropassalacqua",
  port="3306")
c = connexion.cursor()

bkg = "green"

frame = tk.Frame(root, bg=bkg)

options = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z']
selected = StringVar(frame)
selected.set(options[0])

combobox = ttk.Combobox(frame, textvariable=selected, values=options,
                        font=('verdana',14))

trv = ttk.Treeview(frame, columns=(1,2,3,4,5,6,7,8), height=15, show="headings")

trv.column(1, anchor=CENTER, stretch=NO, width=50)
trv.column(2, anchor=CENTER, stretch=NO, width=100)
trv.column(3, anchor=CENTER, stretch=NO, width=100)
trv.column(4, anchor=CENTER, stretch=NO, width=100)
trv.column(5, anchor=CENTER, stretch=NO, width=100)
trv.column(6, anchor=CENTER, stretch=NO, width=100)
trv.column(7, anchor=CENTER, stretch=NO, width=150)
trv.column(8, anchor=CENTER, stretch=NO, width=150)

trv.heading(1, text="Legajo")
trv.heading(2, text="Nombre")
trv.heading(3, text="Apellido")
trv.heading(4, text="Cuit")
trv.heading(5, text='Usuario')
trv.heading(6, text='Sucursal')
trv.heading(7, text='Telefono')
trv.heading(8, text='Correo Electronico')

def displayData():
    c.execute('SELECT * FROM empleado')
    users = c.fetchall()

    for user in users:
        trv.insert('','end', value=(user[0], user[1], user[2], user[3],user[4],user[5],user[6],user[7]))

def search(eventObject):
    # clear treeview
    for item in trv.get_children():
        trv.delete(item)

    val = combobox.get()
    c.execute("""SELECT * FROM empleado  WHERE nombre LIKE %s or 
               apellido like %s""",("%"+val+"%","%"+val+"%"))
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

label_nombre = tk.Label(frame2, text="Nombre:",font=('verdana',12), bg=bkg )
entry_nombre = tk.Entry(frame2, font=('verdana',12))

label_apellido = tk.Label(frame2, text="Apellido: ", font=('verdana',12), bg=bkg)
entry_apellido = tk.Entry(frame2, font=('verdana',12))

label_usuario = tk.Label(frame2, text="Usuario:", font=('verdana',12), bg=bkg)
entry_usuario = tk.Entry(frame2, font=('verdana',12))

label_cuit = tk.Label(frame2, text="Cuit;", font=('verdana',12), bg=bkg)
entry_cuit = tk.Entry(frame2, font=('verdana',12))

label_sucursal = tk.Label(frame2, text="Sucursal;", font=('verdana',12), bg=bkg)
entry_sucursal = tk.Entry(frame2, font=('verdana',12))

label_telefono = tk.Label(frame2, text="Telefono:", font=('verdana',12), bg=bkg)
entry_telefono= tk.Entry(frame2, font=('verdana',12))

label_email = tk.Label(frame2, text="E-Mail:", font=('verdana',12), bg=bkg)
entry_email= tk.Entry(frame2, font=('verdana',12))

#crea la funcion para insertar los datos en la tabla prueba2
def insertData():
    nombre = entry_nombre.get()
    apellido = entry_apellido.get()
    usuario = entry_usuario.get()
    cuit= entry_cuit.get()
    sucursal= entry_sucursal.get()
    telefono= entry_telefono.get()
    email= entry_email.get()

    insert_query = "INSERT INTO empleado (nombre,apellido,usuario,cuit_empleado,sucursal,telefono,e_mail_empleado) VALUES (%s,%s,%s,%s,%s,%s,%s)"
    vals = (nombre,apellido,usuario,cuit,sucursal,telefono,email)
    c.execute(insert_query,vals)
    connexion.commit()
    
    
    nombre = entry_nombre.delete(0, 'end')
    apellido = entry_apellido.delete(0, 'end')
    usuario = entry_usuario.delete(0, 'end')
    cuit = entry_cuit.delete(0, 'end')
    sucursal= entry_sucursal.delete(0, 'end')
    telefono= entry_telefono.delete(0, 'end')
    email= entry_email.delete(0, 'end')
   
    

# Boton de insertar datos
button_insert = tk.Button(frame2, text="Insert", font=('verdana',14), bg='orange',
                          command = insertData)

#grid de labels y entrys

label_nombre.grid(row=0,column=0,sticky='e')
entry_nombre.grid(row=0,column=1, pady=10, padx=10)

label_apellido.grid(row=1, column=0)
entry_apellido.grid(row=1, column=1, pady=10, padx=10)

label_usuario.grid(row=2, column=0, sticky='e')
entry_usuario.grid(row=2, column=1, pady=10, padx=10)

label_cuit.grid(row=3, column=0, sticky='e')
entry_cuit.grid(row=3, column=1, pady=10, padx=10,)

label_sucursal.grid(row=4, column=0, sticky='e')
entry_sucursal.grid(row=4, column=1, pady=10, padx=10,)

label_telefono.grid(row=5, column=0, sticky='e') 
entry_telefono.grid(row=5, column=1, pady=10, padx=10,) 

label_email.grid(row=6, column=0, sticky='e') 
entry_email.grid(row=6, column=1, pady=10, padx=10,) 

button_insert.grid(row=7,column=0, columnspan=2, pady=10, padx=10, sticky='nsew')

frame2.grid(row=0, column=1)

displayData()

root.mainloop()



