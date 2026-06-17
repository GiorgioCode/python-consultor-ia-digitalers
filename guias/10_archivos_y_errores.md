# 10 - Archivos y manejo de errores

## Objetivo

Aprender a leer y escribir archivos simples, y manejar errores basicos.

## Escribir un archivo

Podemos crear o sobrescribir un archivo usando `open()` con modo `"w"`.

Guardar informacion en archivos permite que los datos no se pierdan cuando termina el programa. Es el primer paso para crear programas que recuerdan informacion.

```python
archivo = open("mensaje.txt", "w")
archivo.write("Hola desde Python")
archivo.close()
```

Esto crea un archivo llamado `mensaje.txt`.

## Usar `with`

La forma recomendada es usar `with`, porque cierra el archivo automaticamente.

Cerrar archivos es importante porque el sistema operativo necesita liberar ese recurso. Usar `with` evita olvidos y hace el codigo mas seguro.

```python
with open("mensaje.txt", "w") as archivo:
    archivo.write("Hola desde Python")
```

## Leer un archivo

Leer archivos permite recuperar informacion guardada antes o procesar datos creados por otros programas, como listas, reportes o configuraciones.

```python
with open("mensaje.txt", "r") as archivo:
    contenido = archivo.read()

print(contenido)
```

## Agregar contenido

El modo `"a"` agrega contenido al final del archivo.

Este modo es util para historiales, registros o diarios, donde no queremos borrar lo anterior sino sumar informacion nueva.

```python
with open("notas.txt", "a") as archivo:
    archivo.write("Nueva nota\n")
```

`\n` representa un salto de linea.

## Que es un error

Un error ocurre cuando el programa no puede continuar normalmente.

Los errores no siempre significan que programamos mal. A veces ocurren por datos inesperados, archivos faltantes, permisos, conexion a internet o decisiones del usuario.

Ejemplo:

```python
numero = int(input("Ingresa un numero: "))
print(numero)
```

Si el usuario escribe `hola`, Python no puede convertir ese texto a numero.

## Manejar errores con `try` y `except`

Manejar errores ayuda a que el programa responda de forma clara en lugar de cerrarse de golpe. Esto mejora la experiencia de quien lo usa.

```python
try:
    numero = int(input("Ingresa un numero: "))
    print(f"Numero ingresado: {numero}")
except ValueError:
    print("Eso no es un numero valido")
```

Si ocurre un `ValueError`, el programa muestra un mensaje claro en lugar de romperse.

## Leer archivo con manejo de error

Este tipo de control es comun en aplicaciones reales: antes de usar un archivo, una base de datos o un servicio externo, conviene pensar que puede fallar.

```python
try:
    with open("datos.txt", "r") as archivo:
        contenido = archivo.read()
    print(contenido)
except FileNotFoundError:
    print("El archivo no existe")
```

## Ejercicio

Crea un archivo llamado `diario.py`.

Debe:

1. Pedir al usuario una frase del dia.
2. Guardarla en un archivo llamado `diario.txt`.
3. Agregar un salto de linea al final.
4. Leer el archivo y mostrar su contenido.

Extra: usa `try` y `except` para manejar errores.
