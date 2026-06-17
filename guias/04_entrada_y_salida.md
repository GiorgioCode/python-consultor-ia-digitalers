# 04 - Entrada y salida de datos

## Objetivo

Aprender a pedir datos al usuario y mostrar respuestas personalizadas.

## Salida de datos

La salida es la informacion que el programa muestra.

Puede ser un mensaje en la terminal, un resultado en pantalla, un archivo generado o incluso una respuesta enviada por una aplicacion web.

```python
print("Bienvenido")
```

## Entrada de datos

La entrada es la informacion que el usuario escribe.

La mayoria de los programas utiles necesitan algun tipo de entrada: un buscador recibe palabras, un cajero recibe un monto, una app de turnos recibe fecha y horario.

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

Esto permite que el programa responda de manera personalizada, usando los datos que recibio o calculo.

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

Las f-strings se usan mucho porque hacen que los mensajes sean mas faciles de leer y escribir, especialmente cuando hay varias variables.

```python
nombre = input("Ingresa tu nombre: ")
print(f"Hola, {nombre}")
```

Las f-strings empiezan con `f` antes de las comillas.

## `input()` siempre devuelve texto

Aunque el usuario escriba un numero, `input()` lo recibe como texto.

Esto es importante porque Python no sabe de antemano que intencion tiene el usuario. Tal vez escribio `123` como edad, pero tambien podria ser un codigo, una clave o parte de una direccion.

```python
edad = input("Ingresa tu edad: ")
print(type(edad))
```

El tipo sera `str`.

## Convertir texto a numero

Para convertir a entero usamos `int()`.

Convertir datos es una tarea comun en programacion. Muchos datos llegan como texto desde formularios, archivos o internet, y luego hay que transformarlos para poder calcular.

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
