try:
    frase = input("Frase del dia: ")

    with open("diario.txt", "a") as archivo:
        archivo.write(frase + "\n")

    with open("diario.txt", "r") as archivo:
        contenido = archivo.read()

    print(contenido)
except OSError:
    print("Ocurrio un error al trabajar con el archivo")

