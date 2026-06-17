# 02 - Primer programa, comentarios y errores comunes

## Objetivo

Aprender la estructura basica de un programa Python y reconocer errores simples.

## Mostrar texto con `print`

La funcion `print()` sirve para mostrar informacion en pantalla.

Al empezar, `print()` es una de las herramientas mas utiles porque permite comprobar que el programa esta llegando a cierta parte del codigo o que una variable tiene el valor que esperamos.

```python
print("Hola")
print("Bienvenido a Python")
```

Salida esperada:

```text
Hola
Bienvenido a Python
```

## Texto entre comillas

Cuando escribimos texto en Python, debemos usar comillas.

Las comillas le indican a Python que eso debe tratarse como texto literal. Sin comillas, Python interpreta la palabra como el nombre de una variable, una funcion u otro elemento del programa.

Correcto:

```python
print("Hola")
```

Incorrecto:

```python
print(Hola)
```

Python intentara buscar algo llamado `Hola`, pero no existe. Por eso aparece un error.

## Comentarios

Un comentario es una nota para las personas que leen el codigo. Python no lo ejecuta.

En proyectos reales, los comentarios ayudan a explicar decisiones que no son evidentes. Tambien sirven cuando vuelves a leer tu propio codigo despues de varios dias.

Los comentarios empiezan con `#`.

```python
# Este programa muestra un saludo
print("Hola")
```

Usa comentarios para explicar ideas importantes, no para repetir lo obvio.

## Ejecutar instrucciones en orden

Python ejecuta el codigo de arriba hacia abajo.

Este orden es importante porque muchas instrucciones dependen de otras anteriores. Por ejemplo, primero se guarda un dato en una variable y despues se usa.

```python
print("Primero")
print("Segundo")
print("Tercero")
```

Salida:

```text
Primero
Segundo
Tercero
```

## Errores comunes

### Olvidar cerrar comillas

```python
print("Hola)
```

Python no sabe donde termina el texto.

### Olvidar cerrar parentesis

```python
print("Hola"
```

Python espera encontrar `)`.

### Escribir mal una palabra

```python
pront("Hola")
```

Python no conoce `pront`. La palabra correcta es `print`.

## Leer mensajes de error

Cuando hay un error, Python muestra informacion como:

- Archivo donde ocurrio.
- Linea del error.
- Tipo de error.
- Una descripcion del problema.

No te asustes cuando aparezca un error. Es parte normal de programar.

Los errores son una forma de comunicacion entre Python y quien programa. Al principio parecen dificiles, pero con practica empiezan a convertirse en pistas para corregir el codigo.

## Ejercicio

Crea un archivo llamado `receta.py`.

Debe mostrar los pasos para preparar una receta simple:

```python
print("Paso 1: Calentar agua")
print("Paso 2: Agregar cafe")
print("Paso 3: Revolver")
print("Paso 4: Servir")
```

Luego agrega comentarios para separar las partes del programa.
