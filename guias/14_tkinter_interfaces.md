# 14 - Interfaces visuales con Tkinter

## Objetivo

Aprender a crear interfaces visuales sencillas con Python usando Tkinter.

Hasta ahora la mayoria de los programas funcionaban por consola: el usuario escribia datos con `input()` y el programa respondia con `print()`.

Tkinter permite crear ventanas, botones, campos de texto, etiquetas, listas y mensajes emergentes.

## Que es Tkinter

Tkinter es una libreria incluida con Python para crear interfaces graficas.

No hace falta instalarla con `pip` en la mayoria de las instalaciones de Python, porque ya viene incorporada.

Un programa con Tkinter normalmente tiene:

- Una ventana principal.
- Widgets, como botones, etiquetas y campos de texto.
- Eventos, como hacer clic en un boton.
- Funciones que se ejecutan cuando ocurre un evento.

## Primer ventana

```python
import tkinter as tk

ventana = tk.Tk()
ventana.title("Mi primera ventana")
ventana.geometry("300x200")

etiqueta = tk.Label(ventana, text="Hola desde Tkinter")
etiqueta.pack()

ventana.mainloop()
```

`mainloop()` mantiene la ventana abierta y escucha acciones del usuario.

Sin `mainloop()`, el programa termina inmediatamente.

## Widgets basicos

Algunos widgets comunes:

```text
Label    -> muestra texto
Button   -> boton clickeable
Entry    -> campo para escribir una linea
Text     -> campo para escribir varias lineas
Listbox  -> lista visual de elementos
Frame    -> contenedor para ordenar widgets
```

## Boton con una funcion

```python
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
```

La opcion `command` indica que funcion se ejecuta al hacer clic.

Importante: se escribe `command=saludar`, sin parentesis. Si escribimos `command=saludar()`, la funcion se ejecuta al crear el boton, no al hacer clic.

## Pedir datos con `Entry`

```python
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
```

`get()` obtiene el texto escrito en un `Entry`.

`config()` permite cambiar propiedades de un widget, como el texto de una etiqueta.

## Organizar con `pack`

`pack()` ubica los widgets uno debajo del otro.

```python
tk.Label(ventana, text="Nombre").pack()
tk.Entry(ventana).pack()
tk.Button(ventana, text="Aceptar").pack()
```

Es simple y sirve muy bien para interfaces pequenas.

## Organizar con `grid`

`grid()` ubica los widgets en filas y columnas.

```python
tk.Label(ventana, text="Nombre").grid(row=0, column=0)
tk.Entry(ventana).grid(row=0, column=1)
tk.Button(ventana, text="Aceptar").grid(row=1, column=0, columnspan=2)
```

`grid` es util para formularios.

No conviene mezclar `pack()` y `grid()` dentro del mismo contenedor.

## Variables de Tkinter

Tkinter tiene variables especiales como `StringVar`.

```python
texto = tk.StringVar()
texto.set("Hola")

etiqueta = tk.Label(ventana, textvariable=texto)
```

Luego se puede cambiar el valor:

```python
texto.set("Nuevo mensaje")
```

Esto actualiza automaticamente el widget que usa esa variable.

## Mensajes emergentes

Tkinter incluye `messagebox` para mostrar alertas.

```python
from tkinter import messagebox

messagebox.showinfo("Titulo", "Operacion realizada")
messagebox.showwarning("Atencion", "Falta completar un dato")
messagebox.showerror("Error", "No se pudo continuar")
```

Esto ayuda a comunicar resultados o errores al usuario.

## Ejemplo: calculadora visual

```python
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
```

Este ejemplo combina:

- Entrada de datos.
- Conversion a numero.
- Manejo de errores.
- Botones.
- Actualizacion visual del resultado.

## Ejemplo: lista de tareas visual

Una `Listbox` permite mostrar una lista de elementos.

```python
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

entrada_tarea = tk.Entry(ventana, width=30)
entrada_tarea.pack()

tk.Button(ventana, text="Agregar", command=agregar_tarea).pack()

lista_tareas = tk.Listbox(ventana, width=40)
lista_tareas.pack()

tk.Button(ventana, text="Eliminar seleccionada", command=eliminar_tarea).pack()

ventana.mainloop()
```

## Conectar Tkinter con lo ya aprendido

Tkinter no reemplaza lo anterior. Lo usa.

En una aplicacion visual seguimos necesitando:

- Variables para guardar datos.
- Condicionales para tomar decisiones.
- Bucles para recorrer listas.
- Funciones para ordenar acciones.
- Manejo de errores para validar entradas.
- Archivos para guardar informacion.
- Clases si el proyecto crece.

La diferencia es que la entrada y salida ya no ocurren solo en la terminal, sino en una ventana.

## Recomendaciones

- Empieza con interfaces pequenas.
- Usa funciones para responder a botones.
- Valida los datos antes de convertirlos.
- No mezcles `pack()` y `grid()` en el mismo contenedor.
- Usa nombres claros para los widgets.
- Separa la logica del programa de la parte visual cuando el proyecto crezca.

## Ejercicio

Crea un archivo llamado `conversor_temperatura.py`.

Debe tener:

1. Una ventana.
2. Un campo para ingresar grados Celsius.
3. Un boton para convertir.
4. Una etiqueta para mostrar el resultado en Fahrenheit.
5. Manejo de error si el usuario no escribe un numero.

Formula:

```text
fahrenheit = celsius * 9 / 5 + 32
```

## Desafio

Mejora el gestor de tareas visual para que:

- Permita marcar tareas como completadas.
- Guarde las tareas en un archivo.
- Cargue las tareas al abrir el programa.
- Use una clase `Tarea` para representar cada tarea.
