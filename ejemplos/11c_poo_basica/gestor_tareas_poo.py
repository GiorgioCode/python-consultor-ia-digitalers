class Tarea:
    def __init__(self, titulo):
        self.titulo = titulo
        self.completada = False

    def marcar_completada(self):
        self.completada = True

    def obtener_estado(self):
        if self.completada:
            return "completada"

        return "pendiente"

    def __str__(self):
        return f"{self.titulo} - {self.obtener_estado()}"


class GestorTareas:
    def __init__(self):
        self.tareas = []

    def agregar_tarea(self, titulo):
        nueva_tarea = Tarea(titulo)
        self.tareas.append(nueva_tarea)

    def ver_tareas(self):
        if len(self.tareas) == 0:
            print("No hay tareas")
        else:
            for indice, tarea in enumerate(self.tareas, start=1):
                print(f"{indice}. {tarea}")

    def completar_tarea(self, posicion):
        indice = posicion - 1

        if indice >= 0 and indice < len(self.tareas):
            self.tareas[indice].marcar_completada()
            print("Tarea completada")
        else:
            print("Numero de tarea invalido")


gestor = GestorTareas()

gestor.agregar_tarea("Leer guia de POO")
gestor.agregar_tarea("Practicar clases")
gestor.ver_tareas()

gestor.completar_tarea(1)
gestor.ver_tareas()
