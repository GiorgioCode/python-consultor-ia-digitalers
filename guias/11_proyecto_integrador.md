# 11 - Proyecto integrador: gestor de tareas

## Objetivo

Practicar variables, listas, bucles, condicionales, funciones, archivos y errores en un mismo programa.

## Que vamos a crear

Un gestor de tareas por consola.

Este proyecto es simple, pero representa una idea real: muchas aplicaciones administran listas de elementos. Una app de tareas, un carrito de compras o un sistema de turnos usan conceptos parecidos.

El programa permitira:

- Ver tareas.
- Agregar tareas.
- Guardar tareas en un archivo.
- Salir del programa.

## Paso 1: crear la lista de tareas

La lista sera la memoria temporal del programa. Mientras el programa este abierto, ahi se guardaran las tareas cargadas por el usuario.

```python
tareas = []
```

## Paso 2: mostrar un menu

Un menu permite que el usuario sepa que acciones puede realizar. Es una forma basica de interfaz, aunque todavia estemos trabajando en la terminal.

```python
print("1. Ver tareas")
print("2. Agregar tarea")
print("3. Guardar tareas")
print("4. Salir")
```

## Paso 3: repetir el menu

Como queremos que el usuario pueda hacer varias acciones seguidas, necesitamos repetir el menu. Sin un bucle, el programa terminaria despues de una sola opcion.

```python
tareas = []

while True:
    print("1. Ver tareas")
    print("2. Agregar tarea")
    print("3. Guardar tareas")
    print("4. Salir")

    opcion = input("Elige una opcion: ")

    if opcion == "4":
        break
```

## Paso 4: agregar opciones

Cada opcion del menu se resuelve con una condicion. Este patron aparece mucho: el usuario elige una accion y el programa decide que bloque ejecutar.

```python
tareas = []

while True:
    print("1. Ver tareas")
    print("2. Agregar tarea")
    print("3. Guardar tareas")
    print("4. Salir")

    opcion = input("Elige una opcion: ")

    if opcion == "1":
        print(tareas)
    elif opcion == "2":
        tarea = input("Nueva tarea: ")
        tareas.append(tarea)
    elif opcion == "3":
        with open("tareas.txt", "w") as archivo:
            for tarea in tareas:
                archivo.write(tarea + "\n")
        print("Tareas guardadas")
    elif opcion == "4":
        print("Hasta luego")
        break
    else:
        print("Opcion invalida")
```

## Paso 5: mejorar la visualizacion

En lugar de imprimir la lista completa, podemos mostrar cada tarea con un numero.

Mostrar bien la informacion tambien es parte de programar. Un resultado correcto pero dificil de leer puede hacer que el programa sea incomodo de usar.

```python
if opcion == "1":
    if len(tareas) == 0:
        print("No hay tareas")
    else:
        for indice, tarea in enumerate(tareas, start=1):
            print(f"{indice}. {tarea}")
```

## Version final

En esta version se usan funciones para dividir el programa en partes mas claras. Cada funcion tiene una responsabilidad concreta: mostrar el menu, ver tareas, agregar tareas o guardar datos.

```python
def mostrar_menu():
    print("1. Ver tareas")
    print("2. Agregar tarea")
    print("3. Guardar tareas")
    print("4. Salir")


def ver_tareas(tareas):
    if len(tareas) == 0:
        print("No hay tareas")
    else:
        for indice, tarea in enumerate(tareas, start=1):
            print(f"{indice}. {tarea}")


def agregar_tarea(tareas):
    tarea = input("Nueva tarea: ")
    tareas.append(tarea)
    print("Tarea agregada")


def guardar_tareas(tareas):
    with open("tareas.txt", "w") as archivo:
        for tarea in tareas:
            archivo.write(tarea + "\n")
    print("Tareas guardadas")


tareas = []

while True:
    mostrar_menu()
    opcion = input("Elige una opcion: ")

    if opcion == "1":
        ver_tareas(tareas)
    elif opcion == "2":
        agregar_tarea(tareas)
    elif opcion == "3":
        guardar_tareas(tareas)
    elif opcion == "4":
        print("Hasta luego")
        break
    else:
        print("Opcion invalida")
```

## Desafio

Mejora el proyecto agregando:

- Una opcion para eliminar tareas.
- Una opcion para marcar tareas como completadas.
- Carga automatica de tareas desde `tareas.txt` al iniciar el programa.

Estos desafios acercan el proyecto a una aplicacion mas real: no solo guarda datos, tambien permite modificarlos y recuperar informacion al volver a abrir el programa.
