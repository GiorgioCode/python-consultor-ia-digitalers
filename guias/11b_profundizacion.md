# 11b - Profundizacion de conceptos

## Objetivo

Reforzar temas ya vistos y sumar herramientas que permiten escribir programas mas claros, flexibles y cercanos a problemas reales.

Esta clase funciona como puente entre los fundamentos y proyectos mas completos. No introduce una aplicacion nueva desde cero, sino que profundiza ideas que ya aparecieron: colecciones, funciones, bucles, condiciones y organizacion del codigo.

## Por que profundizar

Al principio alcanza con que un programa funcione. Pero a medida que crece, tambien necesitamos que sea:

- Facil de leer.
- Facil de modificar.
- Facil de probar.
- Menos repetitivo.
- Mas claro en la forma de representar datos.

Muchas herramientas de Python ayudan justamente a eso.

## Sets

Un `set` es una coleccion de elementos no repetidos.

Se parece a una lista, pero tiene dos diferencias importantes:

- No guarda elementos duplicados.
- No mantiene un orden fijo para acceder por posicion.

Ejemplo:

```python
colores = {"rojo", "azul", "rojo", "verde"}

print(colores)
```

Aunque `"rojo"` aparece dos veces, el set lo guarda una sola vez.

## Cuando usar un set

Los sets son utiles cuando queremos:

- Eliminar duplicados.
- Saber si un elemento existe.
- Comparar grupos de datos.
- Encontrar elementos comunes o diferentes.

Ejemplo con una lista:

```python
usuarios = ["ana", "luis", "ana", "sofia", "luis"]
usuarios_unicos = set(usuarios)

print(usuarios_unicos)
```

## Operaciones con sets

```python
grupo_a = {"Ana", "Luis", "Sofia"}
grupo_b = {"Sofia", "Carlos", "Ana"}

print(grupo_a | grupo_b)  # union
print(grupo_a & grupo_b)  # interseccion
print(grupo_a - grupo_b)  # diferencia
```

- Union: todos los elementos sin repetir.
- Interseccion: elementos que estan en ambos sets.
- Diferencia: elementos que estan en el primer set pero no en el segundo.

## Listas, tuplas, diccionarios y sets

Cada coleccion sirve para algo distinto:

```text
Lista       -> varios datos ordenados que pueden cambiar
Tupla       -> varios datos ordenados que no deberian cambiar
Diccionario -> datos con clave y valor
Set         -> datos unicos, sin duplicados
```

Elegir bien la estructura ayuda a que el programa exprese mejor la idea.

## Funciones con valores por defecto

Una funcion puede tener parametros con valores por defecto.

```python
def saludar(nombre, idioma="es"):
    if idioma == "es":
        return f"Hola, {nombre}"
    elif idioma == "en":
        return f"Hello, {nombre}"
    else:
        return f"Hola, {nombre}"


print(saludar("Ana"))
print(saludar("Ana", "en"))
```

Si no enviamos `idioma`, se usa `"es"`.

Esto permite crear funciones flexibles sin obligar a pasar siempre todos los datos.

## Argumentos posicionales y argumentos con nombre

Los argumentos posicionales dependen del orden:

```python
def crear_usuario(nombre, edad, ciudad):
    print(f"{nombre} tiene {edad} anos y vive en {ciudad}")


crear_usuario("Lucia", 25, "Cordoba")
```

Los argumentos con nombre indican explicitamente que valor recibe cada parametro:

```python
crear_usuario(nombre="Lucia", edad=25, ciudad="Cordoba")
```

Tambien podemos cambiar el orden si usamos nombres:

```python
crear_usuario(ciudad="Cordoba", nombre="Lucia", edad=25)
```

Esto mejora la claridad cuando una funcion recibe varios datos.

## `*args`

`*args` permite recibir varios argumentos posicionales.

```python
def sumar_todo(*numeros):
    total = 0

    for numero in numeros:
        total = total + numero

    return total


print(sumar_todo(1, 2, 3))
print(sumar_todo(10, 20, 30, 40))
```

Dentro de la funcion, `numeros` se comporta como una tupla.

## `**kwargs`

`**kwargs` permite recibir varios argumentos con nombre.

```python
def mostrar_perfil(**datos):
    for clave, valor in datos.items():
        print(f"{clave}: {valor}")


mostrar_perfil(nombre="Ana", edad=22, ciudad="Rosario")
```

Dentro de la funcion, `datos` se comporta como un diccionario.

`kwargs` viene de "keyword arguments", que significa argumentos con palabra clave o argumentos con nombre.

## Cuando usar `**kwargs`

`**kwargs` es util cuando:

- No sabemos de antemano cuantos datos pueden llegar.
- Queremos permitir opciones extra.
- Queremos construir funciones configurables.

Ejemplo:

```python
def crear_producto(nombre, precio, **opciones):
    print(f"Producto: {nombre}")
    print(f"Precio: {precio}")

    for clave, valor in opciones.items():
        print(f"{clave}: {valor}")


crear_producto("Mouse", 7500, marca="Logitech", stock=12, color="negro")
```

No conviene abusar de `**kwargs`. Si una funcion siempre necesita los mismos datos, es mejor escribir parametros claros.

## Desempaquetado

Desempaquetar significa tomar los valores de una coleccion y guardarlos en variables.

```python
persona = ("Ana", 22, "Rosario")
nombre, edad, ciudad = persona

print(nombre)
print(edad)
print(ciudad)
```

Tambien se puede usar con listas:

```python
numeros = [10, 20, 30]
a, b, c = numeros
```

La cantidad de variables debe coincidir con la cantidad de elementos.

## Desempaquetado con diccionarios

Podemos usar `**` para enviar un diccionario como argumentos con nombre.

```python
def crear_usuario(nombre, edad, ciudad):
    print(f"{nombre} - {edad} - {ciudad}")


datos = {
    "nombre": "Camila",
    "edad": 28,
    "ciudad": "Mendoza"
}

crear_usuario(**datos)
```

Las claves del diccionario deben coincidir con los nombres de los parametros.

## `enumerate`

`enumerate` permite recorrer una lista obteniendo posicion y valor.

```python
tareas = ["Estudiar", "Practicar", "Descansar"]

for indice, tarea in enumerate(tareas, start=1):
    print(f"{indice}. {tarea}")
```

Es mas claro que manejar un contador manual.

## `range` con inicio, fin y paso

Ya usamos `range`, pero puede recibir tres valores:

```python
for numero in range(2, 11, 2):
    print(numero)
```

Esto muestra numeros del 2 al 10, avanzando de 2 en 2.

Formato:

```text
range(inicio, fin, paso)
```

El valor final no se incluye.

## Comprension de listas

Una comprension de lista permite crear una lista nueva a partir de otra.

Forma tradicional:

```python
numeros = [1, 2, 3, 4, 5]
dobles = []

for numero in numeros:
    dobles.append(numero * 2)

print(dobles)
```

Con comprension:

```python
numeros = [1, 2, 3, 4, 5]
dobles = [numero * 2 for numero in numeros]

print(dobles)
```

Tambien se puede filtrar:

```python
pares = [numero for numero in numeros if numero % 2 == 0]
```

Conviene usar comprensiones cuando la transformacion es corta y facil de leer.

## Ordenar datos con `sorted`

`sorted()` devuelve una lista ordenada.

```python
numeros = [5, 1, 4, 2, 3]
ordenados = sorted(numeros)

print(ordenados)
print(numeros)
```

La lista original no cambia.

Con diccionarios:

```python
productos = [
    {"nombre": "Teclado", "precio": 12000},
    {"nombre": "Mouse", "precio": 7500},
    {"nombre": "Monitor", "precio": 90000}
]

por_precio = sorted(productos, key=lambda producto: producto["precio"])

for producto in por_precio:
    print(producto)
```

`lambda` crea una funcion pequena en el lugar donde se necesita.

## Copias de listas

Hay que tener cuidado al copiar listas.

```python
original = ["Ana", "Luis"]
copia = original

copia.append("Sofia")

print(original)
```

Aunque modificamos `copia`, tambien cambia `original`, porque ambas variables apuntan a la misma lista.

Para crear una copia real:

```python
original = ["Ana", "Luis"]
copia = original.copy()

copia.append("Sofia")

print(original)
print(copia)
```

## `None`

`None` representa ausencia de valor.

```python
resultado = None
```

Se usa cuando todavia no hay dato, cuando una busqueda no encuentra nada o cuando una funcion no tiene resultado para devolver.

Ejemplo:

```python
def buscar_producto(productos, nombre_buscado):
    for producto in productos:
        if producto["nombre"] == nombre_buscado:
            return producto

    return None
```

Luego podemos preguntar:

```python
producto = buscar_producto(productos, "Mouse")

if producto is None:
    print("Producto no encontrado")
else:
    print(producto)
```

## Ejercicio integrador

Crea un archivo llamado `inventario_profundizacion.py`.

Debe:

1. Tener una lista de productos.
2. Cada producto debe ser un diccionario con `nombre`, `precio`, `categoria` y `stock`.
3. Mostrar las categorias unicas usando un set.
4. Ordenar los productos por precio.
5. Buscar un producto por nombre usando una funcion.
6. Crear una funcion que reciba `**kwargs` para actualizar datos de un producto.

## Desafio

Mejora el inventario para que:

- Permita cargar productos por teclado.
- Evite categorias duplicadas usando sets.
- Muestre productos con stock bajo.
- Use comprension de listas para filtrar productos.
- Use `enumerate` para mostrar un menu numerado.
