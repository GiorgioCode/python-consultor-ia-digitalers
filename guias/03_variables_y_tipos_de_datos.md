# 03 - Variables y tipos de datos basicos

## Objetivo

Aprender a guardar informacion en variables y reconocer tipos de datos basicos.

## Que es una variable

Una variable es un nombre que usamos para guardar un valor.

```python
nombre = "Lucia"
edad = 25
```

En este ejemplo:

- `nombre` guarda el texto `"Lucia"`.
- `edad` guarda el numero `25`.

## Mostrar variables

```python
nombre = "Lucia"
edad = 25

print(nombre)
print(edad)
```

Salida:

```text
Lucia
25
```

## Cambiar el valor de una variable

Una variable puede cambiar durante el programa.

```python
puntos = 0
print(puntos)

puntos = 10
print(puntos)
```

Salida:

```text
0
10
```

## Tipos de datos basicos

### Texto: `str`

Se usa para palabras, frases o cualquier dato escrito como texto.

```python
ciudad = "Buenos Aires"
```

### Numero entero: `int`

Se usa para numeros sin decimales.

```python
cantidad = 8
```

### Numero decimal: `float`

Se usa para numeros con decimales.

```python
precio = 1500.50
```

Python usa punto `.` para los decimales, no coma.

### Verdadero o falso: `bool`

Se usa para valores logicos.

```python
es_mayor_de_edad = True
tiene_descuento = False
```

`True` y `False` se escriben con la primera letra en mayuscula.

## Saber el tipo de una variable

La funcion `type()` muestra el tipo de dato.

```python
nombre = "Lucia"
edad = 25
precio = 1500.50

print(type(nombre))
print(type(edad))
print(type(precio))
```

## Nombres de variables

Recomendado:

```python
nombre_usuario = "Carlos"
edad_usuario = 30
```

Evita:

```python
x = "Carlos"
e = 30
```

Los nombres claros hacen que el codigo sea mas facil de entender.

## Ejercicio

Crea un archivo llamado `datos_personales.py`.

Guarda en variables:

- Tu nombre.
- Tu edad.
- Tu ciudad.
- Si estas estudiando actualmente.

Luego muestra cada dato con `print()`.

