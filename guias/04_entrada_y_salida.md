# 04 - Entrada y salida de datos

## Objetivo

Aprender a pedir datos al usuario y mostrar respuestas personalizadas.

## Salida de datos

La salida es la informacion que el programa muestra.

```python
print("Bienvenido")
```

## Entrada de datos

La entrada es la informacion que el usuario escribe.

Para pedir datos usamos `input()`.

```python
nombre = input("Ingresa tu nombre: ")
print("Hola")
print(nombre)
```

Si el usuario escribe `Sofia`, el programa muestra:

```text
Hola
Sofia
```

## Unir texto y variables

Podemos mostrar texto junto con variables usando coma:

```python
nombre = input("Ingresa tu nombre: ")
print("Hola", nombre)
```

Salida:

```text
Hola Sofia
```

## Usar f-strings

Una f-string permite insertar variables dentro de un texto.

```python
nombre = input("Ingresa tu nombre: ")
print(f"Hola, {nombre}")
```

Las f-strings empiezan con `f` antes de las comillas.

## `input()` siempre devuelve texto

Aunque el usuario escriba un numero, `input()` lo recibe como texto.

```python
edad = input("Ingresa tu edad: ")
print(type(edad))
```

El tipo sera `str`.

## Convertir texto a numero

Para convertir a entero usamos `int()`.

```python
edad = input("Ingresa tu edad: ")
edad = int(edad)

print(f"El ano que viene tendras {edad + 1} anos")
```

Para convertir a decimal usamos `float()`.

```python
precio = input("Ingresa el precio: ")
precio = float(precio)

print(f"Precio con aumento: {precio + 100}")
```

## Ejemplo completo

```python
nombre = input("Nombre: ")
edad = int(input("Edad: "))

print(f"Hola, {nombre}")
print(f"En 5 anos tendras {edad + 5} anos")
```

## Ejercicio

Crea un archivo llamado `calculadora_edad.py`.

Debe:

1. Pedir el nombre del usuario.
2. Pedir la edad.
3. Mostrar un saludo.
4. Mostrar cuantos anos tendra en 10 anos.

