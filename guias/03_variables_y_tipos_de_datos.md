# 03 - Variables y tipos de datos basicos

## Objetivo

Aprender a guardar informacion en variables y reconocer tipos de datos basicos.

## Que es una variable

Una variable es un nombre que usamos para guardar un valor.

Puedes imaginar una variable como una etiqueta pegada a un dato. En lugar de recordar el dato exacto todo el tiempo, usamos un nombre claro para volver a usarlo cuando haga falta.

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

Esto permite representar situaciones reales que tambien cambian: puntos de un juego, saldo de una cuenta, cantidad de productos en un carrito o temperatura medida por un sensor.

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

Los tipos de datos le dan contexto a la informacion. No es lo mismo el numero `10` para hacer una cuenta que el texto `"10"` para mostrarlo en una pantalla.

### Texto: `str`

Se usa para palabras, frases o cualquier dato escrito como texto.

Tambien se usa para datos que contienen caracteres aunque parezcan numeros, como telefonos, codigos postales o numeros de documento.

```python
ciudad = "Buenos Aires"
```

### Numero entero: `int`

Se usa para numeros sin decimales.

Es comun usar enteros para edades, cantidades, posiciones, puntajes o cualquier valor que se cuenta de a unidades completas.

```python
cantidad = 8
```

### Numero decimal: `float`

Se usa para numeros con decimales.

Los decimales aparecen en precios, medidas, porcentajes, distancias y resultados de calculos que no dan un numero exacto entero.

```python
precio = 1500.50
```

Python usa punto `.` para los decimales, no coma.

### Verdadero o falso: `bool`

Se usa para valores logicos.

Los booleanos son muy importantes para tomar decisiones: saber si un usuario esta registrado, si una compra fue pagada o si una condicion se cumple.

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

Elegir buenos nombres es parte de escribir buen codigo. Un programa no solo debe funcionar: tambien debe poder leerse y mantenerse.

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
