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

