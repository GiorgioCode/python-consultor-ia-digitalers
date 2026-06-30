import tkinter as tk


def mostrar_saludo():
    nombre = entrada_nombre.get()
    etiqueta_resultado.config(text=f"Hola, {nombre}")


ventana = tk.Tk()
ventana.title("Saludo")

tk.Label(ventana, text="Nombre:").pack()

entrada_nombre = tk.Entry(ventana)
entrada_nombre.pack()

tk.Button(ventana, text="Saludar", command=mostrar_saludo).pack()

etiqueta_resultado = tk.Label(ventana, text="")
etiqueta_resultado.pack()

ventana.mainloop()
