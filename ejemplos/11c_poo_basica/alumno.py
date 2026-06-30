class Alumno:
    def __init__(self, nombre):
        self.nombre = nombre
        self.notas = []

    def agregar_nota(self, nota):
        self.notas.append(nota)

    def calcular_promedio(self):
        if len(self.notas) == 0:
            return 0

        return sum(self.notas) / len(self.notas)

    def mostrar_estado(self):
        promedio = self.calcular_promedio()

        if promedio >= 6:
            estado = "Aprobado"
        else:
            estado = "Desaprobado"

        print(f"{self.nombre} - Promedio: {promedio} - {estado}")


alumno = Alumno("Lucia")
alumno.agregar_nota(8)
alumno.agregar_nota(7)
alumno.agregar_nota(9)
alumno.mostrar_estado()
