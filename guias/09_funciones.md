# 09 - Funciones

## Objetivo

Aprender a organizar codigo en funciones reutilizables.

## Que es una funcion

Una funcion es un bloque de codigo con nombre. Sirve para evitar repetir instrucciones.

```python
def saludar():
    print("Hola")
    print("Bienvenido")
```

Para ejecutar la funcion, hay que llamarla:

```python
saludar()
```

## Funcion completa

```python
def saludar():
    print("Hola")
    print("Bienvenido")

saludar()
```

Salida:

```text
Hola
Bienvenido
```

## Parametros

Un parametro permite enviar informacion a una funcion.

```python
def saludar(nombre):
    print(f"Hola, {nombre}")

saludar("Ana")
saludar("Luis")
```

Salida:

```text
Hola, Ana
Hola, Luis
```

## Retornar valores

`return` permite devolver un resultado.

```python
def sumar(a, b):
    return a + b

resultado = sumar(10, 5)
print(resultado)
```

Salida:

```text
15
```

## Diferencia entre `print` y `return`

`print` muestra informacion en pantalla.

`return` devuelve un valor para usarlo en otra parte del programa.

Ejemplo:

```python
def duplicar(numero):
    return numero * 2

valor = duplicar(4)
print(valor + 10)
```

Salida:

```text
18
```

## Funciones con decisiones

```python
def es_mayor_de_edad(edad):
    if edad >= 18:
        return True
    else:
        return False

edad_usuario = int(input("Edad: "))

if es_mayor_de_edad(edad_usuario):
    print("Puede ingresar")
else:
    print("No puede ingresar")
```

## Ejercicio

Crea un archivo llamado `calculadora_funciones.py`.

Debe tener funciones para:

- Sumar dos numeros.
- Restar dos numeros.
- Multiplicar dos numeros.
- Dividir dos numeros.

Luego pide dos numeros al usuario y muestra los resultados usando esas funciones.

