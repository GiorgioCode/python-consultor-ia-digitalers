class Producto:
    def __init__(self, nombre, precio, stock):
        self.nombre = nombre
        self.precio = precio
        self.stock = stock

    def vender(self, cantidad):
        if cantidad <= self.stock:
            self.stock = self.stock - cantidad
            print("Venta realizada")
        else:
            print("No hay stock suficiente")

    def __str__(self):
        return f"{self.nombre} - ${self.precio} - Stock: {self.stock}"


producto = Producto("Mouse", 7500, 10)

print(producto)
producto.vender(3)
print(producto)
producto.vender(20)
