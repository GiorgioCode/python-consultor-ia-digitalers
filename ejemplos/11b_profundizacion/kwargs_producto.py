def crear_producto(nombre, precio, **opciones):
    producto = {
        "nombre": nombre,
        "precio": precio
    }

    for clave, valor in opciones.items():
        producto[clave] = valor

    return producto


producto = crear_producto(
    "Mouse",
    7500,
    marca="Logitech",
    stock=12,
    color="negro"
)

print(producto)
