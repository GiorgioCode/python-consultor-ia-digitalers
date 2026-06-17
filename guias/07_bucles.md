# 07 - Bucles

## Objetivo

Aprender a repetir instrucciones usando `while` y `for`.

## Que es un bucle

Un bucle permite ejecutar el mismo codigo varias veces.

Sirve para tareas como:

- Contar numeros.
- Recorrer una lista.
- Repetir una pregunta hasta recibir una respuesta valida.

## Bucle `while`

`while` significa "mientras".

```python
contador = 1

while contador <= 5:
    print(contador)
    contador = contador + 1
```

Salida:

```text
1
2
3
4
5
```

El bucle se repite mientras la condicion sea verdadera.

## Cuidado con los bucles infinitos

Si la condicion nunca deja de ser verdadera, el programa no termina.

Ejemplo peligroso:

```python
contador = 1

while contador <= 5:
    print(contador)
```

Falta aumentar `contador`.

## Bucle `for`

`for` sirve para recorrer elementos.

```python
for numero in range(1, 6):
    print(numero)
```

Salida:

```text
1
2
3
4
5
```

`range(1, 6)` genera numeros desde 1 hasta 5. El 6 no se incluye.

## Recorrer texto

```python
palabra = "Python"

for letra in palabra:
    print(letra)
```

Salida:

```text
P
y
t
h
o
n
```

## `break`

`break` corta un bucle.

```python
while True:
    texto = input("Escribe salir para terminar: ")

    if texto == "salir":
        break

    print(f"Escribiste: {texto}")
```

## Ejercicio

Crea un archivo llamado `tabla_multiplicar.py`.

Debe:

1. Pedir un numero.
2. Mostrar su tabla de multiplicar del 1 al 10.

Ejemplo:

```text
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
```

