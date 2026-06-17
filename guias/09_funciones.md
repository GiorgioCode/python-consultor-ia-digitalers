# 09 - Funciones

## Objetivo

Aprender a organizar codigo en funciones reutilizables.

## Que es una funcion

Una funcion es un bloque de codigo con nombre. Sirve para evitar repetir instrucciones.

Tambien sirve para ordenar el pensamiento. Cuando una tarea tiene nombre, el programa se vuelve mas facil de leer: `calcular_total()` comunica mejor la intencion que muchas lineas sueltas.

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

En programas pequenos las funciones pueden parecer innecesarias, pero en programas mas grandes son fundamentales para separar responsabilidades.

## Parametros

Un parametro permite enviar informacion a una funcion.

Gracias a los parametros, una misma funcion puede servir para muchos casos. No necesitamos crear una funcion distinta para saludar a cada persona.

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

Esto permite combinar funciones entre si. Una funcion calcula algo, otra lo guarda, otra lo muestra y otra lo valida.

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

Una forma simple de pensarlo: `print` es para comunicar algo al usuario; `return` es para entregar un resultado al propio programa.

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

Las funciones tambien pueden contener condicionales, bucles y cualquier otra estructura. Esto permite crear piezas de codigo pequenas, pero con comportamiento propio.

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
