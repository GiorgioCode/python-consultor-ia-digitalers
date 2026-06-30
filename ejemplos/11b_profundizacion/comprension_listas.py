numeros = [1, 2, 3, 4, 5, 6]

dobles = [numero * 2 for numero in numeros]
pares = [numero for numero in numeros if numero % 2 == 0]

print("Numeros:")
print(numeros)

print("Dobles:")
print(dobles)

print("Pares:")
print(pares)
