# 08 - Listas, tuplas y diccionarios

## Objetivo

Aprender a guardar varios datos en una sola variable.

## Listas

Una lista guarda varios valores ordenados.

Las listas aparecen cuando necesitamos trabajar con muchos datos del mismo tipo o relacionados: productos, notas, nombres de alumnos, mensajes o tareas pendientes.

```python
frutas = ["manzana", "banana", "pera"]
print(frutas)
```

## Acceder a elementos

Las posiciones empiezan en 0.

Que las posiciones empiecen en 0 puede parecer raro al principio, pero es una convencion muy comun en programacion. Con practica se vuelve natural.

```python
frutas = ["manzana", "banana", "pera"]

print(frutas[0])
print(frutas[1])
print(frutas[2])
```

Salida:

```text
manzana
banana
pera
```

## Agregar elementos

Agregar elementos permite construir una lista durante la ejecucion del programa, por ejemplo cuando un usuario carga productos en un carrito.

```python
frutas = ["manzana", "banana"]
frutas.append("pera")

print(frutas)
```

## Modificar elementos

Modificar datos es necesario cuando la informacion cambia: corregir un nombre, actualizar un precio o reemplazar un estado.

```python
frutas = ["manzana", "banana"]
frutas[1] = "naranja"

print(frutas)
```

## Recorrer una lista

```python
frutas = ["manzana", "banana", "pera"]

for fruta in frutas:
    print(fruta)
```

## Tuplas

Una tupla es parecida a una lista, pero no se puede modificar.

Esa caracteristica ayuda a proteger datos que deberian permanecer iguales, como coordenadas, fechas fijas o configuraciones simples.

```python
coordenada = (10, 20)
print(coordenada[0])
print(coordenada[1])
```

Usa tuplas cuando los datos no deberian cambiar.

## Diccionarios

Un diccionario guarda datos con clave y valor.

Los diccionarios son muy usados porque se parecen a como describimos objetos reales: una persona tiene nombre, edad y ciudad; un producto tiene precio, stock y categoria.

```python
persona = {
    "nombre": "Camila",
    "edad": 28,
    "ciudad": "Cordoba"
}

print(persona["nombre"])
print(persona["edad"])
```

## Agregar o cambiar valores en un diccionario

```python
persona = {
    "nombre": "Camila",
    "edad": 28
}

persona["ciudad"] = "Cordoba"
persona["edad"] = 29

print(persona)
```

## Recorrer un diccionario

Recorrer un diccionario sirve para mostrar o procesar todos los datos sin escribir una linea para cada clave.

```python
persona = {
    "nombre": "Camila",
    "edad": 28,
    "ciudad": "Cordoba"
}

for clave, valor in persona.items():
    print(f"{clave}: {valor}")
```

## Ejercicio

Crea un archivo llamado `lista_compras.py`.

Debe:

1. Crear una lista vacia.
2. Pedir tres productos al usuario.
3. Agregar los productos a la lista.
4. Mostrar la lista completa.
5. Mostrar cada producto en una linea diferente.
