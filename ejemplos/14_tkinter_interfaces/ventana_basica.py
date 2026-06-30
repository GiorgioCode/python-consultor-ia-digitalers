import tkinter as tk


ventana = tk.Tk()
ventana.title("Mi primera ventana")
ventana.geometry("300x200")

etiqueta = tk.Label(ventana, text="Hola desde Tkinter")
etiqueta.pack()

ventana.mainloop()
