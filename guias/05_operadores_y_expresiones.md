# 05 - Operadores y expresiones

## Objetivo

Aprender a hacer calculos y comparaciones en Python.

## Operadores aritmeticos

Los operadores aritmeticos sirven para hacer cuentas.

Se usan en situaciones muy cotidianas: calcular precios, descuentos, promedios, distancias, intereses, puntajes o totales de una compra.

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

El resto es util para saber, por ejemplo, si un numero es par o impar, repartir elementos en grupos o detectar ciclos cada cierta cantidad de pasos.

## Potencia

```python
print(2 ** 3)
```

Salida:

```text
8
```

La potencia aparece en calculos matematicos, fisica, intereses compuestos y algunos algoritmos. No siempre se usa al principio, pero conviene reconocerla.

## Operadores de comparacion

Sirven para comparar valores. Devuelven `True` o `False`.

Las comparaciones permiten que un programa evalua situaciones: si una persona tiene edad suficiente, si un stock esta agotado o si una nota alcanza para aprobar.

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

Esta diferencia es una de las mas importantes al comenzar. Con `=` guardamos informacion; con `==` hacemos una pregunta.

```python
edad = 20
```

`==` compara dos valores.

```python
print(edad == 20)
```

## Operadores logicos

Sirven para combinar condiciones.

En la vida real muchas decisiones dependen de mas de una condicion. Por ejemplo: permitir una compra si hay stock y el pago fue aprobado.

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
