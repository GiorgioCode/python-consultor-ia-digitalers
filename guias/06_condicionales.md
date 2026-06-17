# 06 - Condicionales

## Objetivo

Aprender a tomar decisiones en un programa usando `if`, `elif` y `else`.

## Que es una condicion

Una condicion es una pregunta que Python puede responder con `True` o `False`.

```python
edad = 20
print(edad >= 18)
```

Salida:

```text
True
```

## `if`

`if` significa "si".

```python
edad = int(input("Ingresa tu edad: "))

if edad >= 18:
    print("Eres mayor de edad")
```

El codigo indentado se ejecuta solo si la condicion es verdadera.

## Indentacion

La indentacion es el espacio al comienzo de una linea. En Python es obligatoria para marcar bloques de codigo.

Correcto:

```python
if edad >= 18:
    print("Eres mayor de edad")
```

Incorrecto:

```python
if edad >= 18:
print("Eres mayor de edad")
```

## `else`

`else` significa "si no".

```python
edad = int(input("Ingresa tu edad: "))

if edad >= 18:
    print("Eres mayor de edad")
else:
    print("Eres menor de edad")
```

## `elif`

`elif` permite revisar mas condiciones.

```python
nota = int(input("Ingresa tu nota: "))

if nota >= 9:
    print("Excelente")
elif nota >= 6:
    print("Aprobado")
else:
    print("Desaprobado")
```

Python revisa de arriba hacia abajo y ejecuta el primer bloque cuya condicion sea verdadera.

## Condiciones con texto

```python
usuario = input("Usuario: ")

if usuario == "admin":
    print("Acceso permitido")
else:
    print("Acceso denegado")
```

## Ejercicio

Crea un archivo llamado `estado_nota.py`.

Debe pedir una nota del 1 al 10 y mostrar:

- `Excelente` si la nota es 9 o 10.
- `Aprobado` si la nota esta entre 6 y 8.
- `Desaprobado` si la nota es menor que 6.

