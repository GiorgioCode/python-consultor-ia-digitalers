def buscar_producto(productos, nombre_buscado):
    for producto in productos:
        if producto["nombre"] == nombre_buscado:
            return producto

    return None


nombres = ["Ana", "Luis"]
copia = nombres.copy()
copia.append("Sofia")

print("Original:")
print(nombres)

print("Copia:")
print(copia)

productos = [
    {"nombre": "Mouse", "precio": 7500},
    {"nombre": "Teclado", "precio": 12000}
]

producto = buscar_producto(productos, "Monitor")

if producto is None:
    print("Producto no encontrado")
else:
    print(producto)
