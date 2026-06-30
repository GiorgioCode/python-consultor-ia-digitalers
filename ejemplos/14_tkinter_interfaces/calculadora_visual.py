import tkinter as tk
from tkinter import messagebox


def sumar():
    try:
        numero_1 = float(entrada_1.get())
        numero_2 = float(entrada_2.get())
        resultado.set(f"Resultado: {numero_1 + numero_2}")
    except ValueError:
        messagebox.showerror("Error", "Ingresa numeros validos")


ventana = tk.Tk()
ventana.title("Calculadora")

tk.Label(ventana, text="Numero 1").grid(row=0, column=0)
entrada_1 = tk.Entry(ventana)
entrada_1.grid(row=0, column=1)

tk.Label(ventana, text="Numero 2").grid(row=1, column=0)
entrada_2 = tk.Entry(ventana)
entrada_2.grid(row=1, column=1)

tk.Button(ventana, text="Sumar", command=sumar).grid(row=2, column=0, columnspan=2)

resultado = tk.StringVar()
resultado.set("Resultado:")
tk.Label(ventana, textvariable=resultado).grid(row=3, column=0, columnspan=2)

ventana.mainloop()
