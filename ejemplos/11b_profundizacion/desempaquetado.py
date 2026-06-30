persona = ("Ana", 22, "Rosario")
nombre, edad, ciudad = persona

print(nombre)
print(edad)
print(ciudad)


def crear_usuario(nombre, edad, ciudad):
    print(f"{nombre} - {edad} - {ciudad}")


datos = {
    "nombre": "Camila",
    "edad": 28,
    "ciudad": "Mendoza"
}

crear_usuario(**datos)
