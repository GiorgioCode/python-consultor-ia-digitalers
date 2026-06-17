def sumar(a, b):
    return a + b


def restar(a, b):
    return a - b


def multiplicar(a, b):
    return a * b


def dividir(a, b):
    return a / b


primer_numero = float(input("Primer numero: "))
segundo_numero = float(input("Segundo numero: "))

print(f"Suma: {sumar(primer_numero, segundo_numero)}")
print(f"Resta: {restar(primer_numero, segundo_numero)}")
print(f"Multiplicacion: {multiplicar(primer_numero, segundo_numero)}")
print(f"Division: {dividir(primer_numero, segundo_numero)}")

