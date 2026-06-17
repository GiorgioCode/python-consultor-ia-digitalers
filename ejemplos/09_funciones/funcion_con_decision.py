def es_mayor_de_edad(edad):
    if edad >= 18:
        return True
    else:
        return False


edad_usuario = int(input("Edad: "))

if es_mayor_de_edad(edad_usuario):
    print("Puede ingresar")
else:
    print("No puede ingresar")

