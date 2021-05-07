import tkinter as tk
from tkinter import ttk
import cine_database

window  = tk.Tk()
window.geometry("550x700+350+10")
window.title("CINE NAPOLIS")
window.resizable(False, False)

pelicula = tk.StringVar()
hora = tk.StringVar()
fecha = tk.StringVar()
idioma = tk.StringVar()


def crear_sala():

    pelicula = entry_pelicula.get()
    hora = entry_hora.get()
    fecha = entry_fecha.get()
    idioma = entry_idioma.get()

    cine_db = cine_database.MyDatabase()
    cine_db.insert_db(pelicula, hora, fecha, idioma)


lienso1= tk.Frame(window, width=550, height=350, bg="SpringGreen4")
lienso1.place(x=0, y=0)
lienso2 = tk.Frame(window, width=550, height=350, bg="gray66")
lienso2.place(x=0, y=350)


lienso = tk.Canvas(window, width=365, height=500, bg="gray99")
lienso.place(x=90, y=100)

# Widgets dentro del contender TITLE
title1 = tk.Label(lienso, 
              text="SALA DE CINE", 
              font=("Century Gothic", "22", "bold"),
              bg="gray99",
              justify="left")
title1.place(x=25, y=10)
title2 = tk.Label(lienso, 
              text="Todos los campos son obligartorios.", 
              font=("Century Gothic", "14"),
              bg="gray99",
              justify="left")
title2.place(x=25, y=50)

# Elemtos de la cartelara

tk.Label(lienso, text="Pelicula", font=("Bold"), bg="gray99").place(x=40, y=110)
entry_pelicula = tk.Entry(lienso, width=40, bg="gray90", font=("Century Gothic", "9"))
entry_pelicula.place(x=40, y=140)

tk.Label(lienso, text="Hora", font=("Bold"), bg="gray99").place(x=40, y=170)
entry_hora = tk.Entry(lienso, width=40, bg="gray90", font=("Century Gothic", "9"))
entry_hora.place(x=40, y=200)

tk.Label(lienso, text="Fecha", font=("Bold"), bg="gray99").place(x=40, y=230)
entry_fecha = tk.Entry(lienso, width=40, bg="gray90", font=("Century Gothic", "9"))
entry_fecha.place(x=40, y=260)

tk.Label(lienso, text="Idioma", font=("Bold"), bg="gray99").place(x=40, y=290)
entry_idioma = tk.Entry(lienso, width=40, bg="gray90", font=("Century Gothic", "9"))
entry_idioma.place(x=40, y=320)

boton = tk.Button(lienso, text="Registrar", font=("Bold"), width=26, height=2, command=crear_sala, bg="SpringGreen4")
boton.place(x=58, y=390)

window.mainloop()