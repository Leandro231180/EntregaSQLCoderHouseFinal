import tkinter as tk
from tkinter import *
from tkinter import ttk
import mysql.connector

root = Tk()
root.title("Muestra Productos,Busca productos y Agrega Productos")

connexion= mysql.connector.connect(host="localhost",
  user="ALFONSOX",
  password="chiefdeposit",
  database="proyectofinalleandropassalacqua",
  port="3306")
c = connexion.cursor()

bkg = "grey"

frame = tk.Frame(root, bg=bkg)

options = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z']
selected = StringVar(frame)
selected.set(options[0])

combobox = ttk.Combobox(frame, textvariable=selected, values=options,
                        font=('verdana',14))

trv = ttk.Treeview(frame, columns=(1,2,3,4,5,6), height=15, show="headings")

trv.column(1, anchor=CENTER, stretch=NO, width=100)
trv.column(2, anchor=CENTER, stretch=NO, width=100)
trv.column(3, anchor=CENTER, stretch=NO, width=100)
trv.column(4, anchor=CENTER, stretch=NO, width=100)
trv.column(5, anchor=CENTER, stretch=NO, width=100)
trv.column(6, anchor=CENTER, stretch=NO, width=100)

trv.heading(1, text="id producto")
trv.heading(2, text="id proveedor")
trv.heading(3, text="Nombre")
trv.heading(4, text="Categoria")
trv.heading(5, text='Cant. en stock')
trv.heading(6, text='Precio compra')

def displayData():
    c.execute('SELECT * FROM producto_stock')
    users = c.fetchall()

    for user in users:
        trv.insert('','end', value=(user[0], user[1], user[2], user[3],user[4],user[5]))

def search(eventObject):
    # clear treeview
    for item in trv.get_children():
        trv.delete(item)

    val = combobox.get()
    c.execute("""SELECT * FROM producto_stock  WHERE Producto_nombre LIKE %s or 
               Categoria like %s""",("%"+val+"%","%"+val+"%"))
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

label_id_prov = tk.Label(frame2, text="proveedor id: ",font=('verdana',12), bg=bkg )
entry_id_prov = tk.Entry(frame2, font=('verdana',12))

label_nombre = tk.Label(frame2, text="Nombre Producto: ", font=('verdana',12), bg=bkg)
entry_nombre = tk.Entry(frame2, font=('verdana',12))

label_categoria = tk.Label(frame2, text="categoria", font=('verdana',12), bg=bkg)
entry_categoria = tk.Entry(frame2, font=('verdana',12))

label_stock = tk.Label(frame2, text="Stock", font=('verdana',12), bg=bkg)
entry_stock = tk.Entry(frame2, font=('verdana',12))

label_precio = tk.Label(frame2, text="Precio", font=('verdana',12), bg=bkg)
entry_precio = tk.Entry(frame2, font=('verdana',12))

#crea la funcion para insertar los datos en la tabla prueba2
def insertData():
    id_proveedor = entry_id_prov.get()
    name = entry_nombre.get()
    categoria = entry_categoria.get()
    stock= entry_stock.get()
    precio_compra= entry_precio.get()

    insert_query = "INSERT INTO producto_stock (id_proveedor,Producto_nombre,Categoria,stock_unidades,precio_unidad) VALUES (%s,%s,%s,%s,%s)"
    vals = (id_proveedor,name,categoria,stock,precio_compra)
    c.execute(insert_query,vals)
    connexion.commit()
    
    id_proveedor = entry_id_prov.delete(0, 'end')
    name = entry_nombre.delete(0,'end')
    categoria = entry_categoria.delete(0,'end')
    stock= entry_stock.delete(0,'end')
    precio_compra= entry_precio.delete(0,'end')
    

# Boton de insertar datos
button_insert = tk.Button(frame2, text="Insert", font=('verdana',14), bg='orange',
                          command = insertData)

#grid de labels y entrys

label_id_prov.grid(row=0,column=0,sticky='e')
entry_id_prov.grid(row=0,column=1, pady=10, padx=10)

label_nombre.grid(row=1, column=0)
entry_nombre.grid(row=1, column=1, pady=10, padx=10)

label_categoria.grid(row=2, column=0, sticky='e')
entry_categoria.grid(row=2, column=1, pady=10, padx=10)

label_stock.grid(row=3, column=0, sticky='e')
entry_stock.grid(row=3, column=1, pady=10, padx=10,)

label_precio.grid(row=4, column=0, sticky='e') 
entry_precio.grid(row=4, column=1, pady=10, padx=10,) 

button_insert.grid(row=5,column=0, columnspan=2, pady=10, padx=10, sticky='nsew')

frame2.grid(row=0, column=1)

displayData()

root.mainloop()



