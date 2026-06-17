# 08 - Listas, tuplas y diccionarios

## Objetivo

Aprender a guardar varios datos en una sola variable.

## Listas

Una lista guarda varios valores ordenados.

```python
frutas = ["manzana", "banana", "pera"]
print(frutas)
```

## Acceder a elementos

Las posiciones empiezan en 0.

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

```python
frutas = ["manzana", "banana"]
frutas.append("pera")

print(frutas)
```

## Modificar elementos

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

```python
coordenada = (10, 20)
print(coordenada[0])
print(coordenada[1])
```

Usa tuplas cuando los datos no deberian cambiar.

## Diccionarios

Un diccionario guarda datos con clave y valor.

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

