# 05 - Operadores y expresiones

## Objetivo

Aprender a hacer calculos y comparaciones en Python.

## Operadores aritmeticos

Los operadores aritmeticos sirven para hacer cuentas.

```python
suma = 10 + 5
resta = 10 - 5
multiplicacion = 10 * 5
division = 10 / 5
```

Ejemplo:

```python
print(10 + 5)
print(10 - 5)
print(10 * 5)
print(10 / 5)
```

Salida:

```text
15
5
50
2.0
```

La division con `/` devuelve un numero decimal.

## Division entera y resto

```python
print(10 // 3)
print(10 % 3)
```

Salida:

```text
3
1
```

- `//` devuelve el resultado entero de la division.
- `%` devuelve el resto.

## Potencia

```python
print(2 ** 3)
```

Salida:

```text
8
```

## Operadores de comparacion

Sirven para comparar valores. Devuelven `True` o `False`.

```python
print(10 > 5)
print(10 < 5)
print(10 == 10)
print(10 != 3)
```

Salida:

```text
True
False
True
True
```

Operadores comunes:

- `>` mayor que.
- `<` menor que.
- `>=` mayor o igual que.
- `<=` menor o igual que.
- `==` igual a.
- `!=` distinto de.

## Diferencia entre `=` y `==`

`=` asigna un valor.

```python
edad = 20
```

`==` compara dos valores.

```python
print(edad == 20)
```

## Operadores logicos

Sirven para combinar condiciones.

```python
edad = 25
tiene_documento = True

print(edad >= 18 and tiene_documento)
print(edad < 18 or tiene_documento)
print(not tiene_documento)
```

- `and`: todas las condiciones deben ser verdaderas.
- `or`: al menos una condicion debe ser verdadera.
- `not`: invierte el valor.

## Ejercicio

Crea un archivo llamado `calculadora_simple.py`.

Debe pedir dos numeros y mostrar:

- Suma.
- Resta.
- Multiplicacion.
- Division.
- Si el primer numero es mayor que el segundo.

