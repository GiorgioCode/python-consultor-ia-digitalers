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

    def obtener_estado(self):
        if self.calcular_promedio() >= 6:
            return "Aprobado"

        return "Desaprobado"

    def __str__(self):
        promedio = self.calcular_promedio()
        estado = self.obtener_estado()

        return f"{self.nombre} - Promedio: {promedio} - {estado}"


class Curso:
    def __init__(self, nombre):
        self.nombre = nombre
        self.alumnos = []

    def agregar_alumno(self, alumno):
        self.alumnos.append(alumno)

    def mostrar_alumnos(self):
        print(f"Curso: {self.nombre}")

        for alumno in self.alumnos:
            print(alumno)


curso = Curso("Python inicial")

ana = Alumno("Ana")
ana.agregar_nota(8)
ana.agregar_nota(9)

luis = Alumno("Luis")
luis.agregar_nota(4)
luis.agregar_nota(7)

curso.agregar_alumno(ana)
curso.agregar_alumno(luis)
curso.mostrar_alumnos()
