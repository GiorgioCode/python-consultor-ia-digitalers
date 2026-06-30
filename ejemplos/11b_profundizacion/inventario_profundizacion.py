def buscar_producto(productos, nombre_buscado):
    for producto in productos:
        if producto["nombre"].lower() == nombre_buscado.lower():
            return producto

    return None


def actualizar_producto(producto, **cambios):
    for clave, valor in cambios.items():
        producto[clave] = valor


productos = [
    {"nombre": "Mouse", "precio": 7500, "categoria": "perifericos", "stock": 12},
    {"nombre": "Teclado", "precio": 12000, "categoria": "perifericos", "stock": 7},
    {"nombre": "Monitor", "precio": 90000, "categoria": "pantallas", "stock": 3},
    {"nombre": "Notebook", "precio": 450000, "categoria": "computadoras", "stock": 2}
]

categorias = {producto["categoria"] for producto in productos}
productos_ordenados = sorted(productos, key=lambda producto: producto["precio"])
stock_bajo = [producto for producto in productos if producto["stock"] <= 3]

print("Categorias:")
print(categorias)

print("Productos por precio:")
for indice, producto in enumerate(productos_ordenados, start=1):
    print(f"{indice}. {producto['nombre']} - ${producto['precio']}")

producto = buscar_producto(productos, "Monitor")

if producto is not None:
    actualizar_producto(producto, stock=5, destacado=True)
    print("Producto actualizado:")
    print(producto)

print("Stock bajo:")
for producto in stock_bajo:
    print(producto["nombre"])
