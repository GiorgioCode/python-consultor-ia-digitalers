def sumar_todo(*numeros):
    total = 0

    for numero in numeros:
        total = total + numero

    return total


def mostrar_perfil(**datos):
    for clave, valor in datos.items():
        print(f"{clave}: {valor}")


print(sumar_todo(1, 2, 3))
print(sumar_todo(10, 20, 30, 40))

mostrar_perfil(nombre="Ana", edad=22, ciudad="Rosario")
