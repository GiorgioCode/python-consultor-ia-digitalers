persona = {
    "nombre": "Camila",
    "edad": 28,
    "ciudad": "Cordoba"
}

print(persona["nombre"])
print(persona["edad"])

for clave, valor in persona.items():
    print(f"{clave}: {valor}")

