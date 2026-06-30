productos = [
    {"nombre": "Teclado", "precio": 12000},
    {"nombre": "Mouse", "precio": 7500},
    {"nombre": "Monitor", "precio": 90000}
]

por_precio = sorted(productos, key=lambda producto: producto["precio"])

for indice, producto in enumerate(por_precio, start=1):
    print(f"{indice}. {producto['nombre']} - ${producto['precio']}")
