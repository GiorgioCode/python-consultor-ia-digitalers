class Tarea:
    def __init__(self, titulo):
        self.titulo = titulo
        self.completada = False

    def marcar_completada(self):
        self.completada = True

    def mostrar(self):
        if self.completada:
            estado = "completada"
        else:
            estado = "pendiente"

        print(f"{self.titulo} - {estado}")


tarea = Tarea("Practicar funciones")
tarea.mostrar()

tarea.marcar_completada()
tarea.mostrar()
