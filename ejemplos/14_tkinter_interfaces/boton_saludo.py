import tkinter as tk


def saludar():
    etiqueta.config(text="Hola, hiciste clic")


ventana = tk.Tk()
ventana.title("Boton")

etiqueta = tk.Label(ventana, text="Presiona el boton")
etiqueta.pack()

boton = tk.Button(ventana, text="Saludar", command=saludar)
boton.pack()

ventana.mainloop()
