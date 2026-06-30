import tkinter as tk
from tkinter import messagebox


def convertir():
    try:
        celsius = float(entrada_celsius.get())
        fahrenheit = celsius * 9 / 5 + 32
        resultado.set(f"{fahrenheit} grados Fahrenheit")
    except ValueError:
        messagebox.showerror("Error", "Ingresa una temperatura valida")


ventana = tk.Tk()
ventana.title("Conversor de temperatura")

tk.Label(ventana, text="Grados Celsius").grid(row=0, column=0)

entrada_celsius = tk.Entry(ventana)
entrada_celsius.grid(row=0, column=1)

tk.Button(ventana, text="Convertir", command=convertir).grid(row=1, column=0, columnspan=2)

resultado = tk.StringVar()
resultado.set("Resultado:")

tk.Label(ventana, textvariable=resultado).grid(row=2, column=0, columnspan=2)

ventana.mainloop()
