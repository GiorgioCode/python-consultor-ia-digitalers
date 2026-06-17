# 02 - Primer programa, comentarios y errores comunes

## Objetivo

Aprender la estructura basica de un programa Python y reconocer errores simples.

## Mostrar texto con `print`

La funcion `print()` sirve para mostrar informacion en pantalla.

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

Los comentarios empiezan con `#`.

```python
# Este programa muestra un saludo
print("Hola")
```

Usa comentarios para explicar ideas importantes, no para repetir lo obvio.

## Ejecutar instrucciones en orden

Python ejecuta el codigo de arriba hacia abajo.

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

