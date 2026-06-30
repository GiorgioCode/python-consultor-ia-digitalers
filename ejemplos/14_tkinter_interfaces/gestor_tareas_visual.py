import tkinter as tk
from tkinter import messagebox


def agregar_tarea():
    tarea = entrada_tarea.get()

    if tarea == "":
        messagebox.showwarning("Atencion", "Escribe una tarea")
    else:
        lista_tareas.insert(tk.END, tarea)
        entrada_tarea.delete(0, tk.END)


def eliminar_tarea():
    seleccion = lista_tareas.curselection()

    if len(seleccion) == 0:
        messagebox.showwarning("Atencion", "Selecciona una tarea")
    else:
        lista_tareas.delete(seleccion[0])


ventana = tk.Tk()
ventana.title("Gestor de tareas")
ventana.geometry("320x300")

entrada_tarea = tk.Entry(ventana, width=35)
entrada_tarea.pack(pady=8)

tk.Button(ventana, text="Agregar", command=agregar_tarea).pack()

lista_tareas = tk.Listbox(ventana, width=40)
lista_tareas.pack(pady=8)

tk.Button(ventana, text="Eliminar seleccionada", command=eliminar_tarea).pack()

ventana.mainloop()
