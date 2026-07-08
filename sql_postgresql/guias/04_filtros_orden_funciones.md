# 04 - Filtros, orden y funciones utiles

## Objetivo

Aprender a filtrar filas con `WHERE`, ordenar resultados con `ORDER BY` y usar funciones frecuentes de PostgreSQL.

## Filtrar con WHERE

```sql
SELECT id, nombre, edad
FROM alumnos
WHERE edad >= 25; -- Solo alumnos de 25 anios o mas.
```

`WHERE` deja pasar solo las filas que cumplen una condicion.

## Operadores de comparacion

```text
=    Igual
<>   Distinto
>    Mayor
>=   Mayor o igual
<    Menor
<=   Menor o igual
```

Ejemplo:

```sql
SELECT nombre, precio
FROM productos
WHERE precio <> 0; -- Productos cuyo precio no es cero.
```

## Combinar condiciones

```sql
SELECT nombre, edad, ciudad
FROM alumnos
WHERE edad >= 25 AND ciudad = 'Cordoba'; -- Deben cumplirse las dos condiciones.
```

```sql
SELECT nombre, ciudad
FROM alumnos
WHERE ciudad = 'Rosario' OR ciudad = 'Cordoba'; -- Alcanza con una condicion.
```

## Buscar texto con LIKE e ILIKE

```sql
SELECT nombre
FROM alumnos
WHERE nombre LIKE 'A%'; -- Nombres que empiezan con A, sensible a mayusculas.
```

```sql
SELECT nombre
FROM alumnos
WHERE nombre ILIKE 'a%'; -- Nombres que empiezan con a o A.
```

`%` representa cualquier cantidad de caracteres.

## IN y BETWEEN

```sql
SELECT nombre, ciudad
FROM alumnos
WHERE ciudad IN ('Rosario', 'Cordoba'); -- Ciudad dentro de una lista.
```

```sql
SELECT nombre, edad
FROM alumnos
WHERE edad BETWEEN 20 AND 30; -- Incluye 20 y 30.
```

## Ordenar resultados

```sql
SELECT nombre, edad
FROM alumnos
ORDER BY edad ASC; -- Menor a mayor.
```

```sql
SELECT nombre, precio
FROM productos
ORDER BY precio DESC; -- Mayor a menor.
```

## Funciones utiles

```sql
SELECT
    UPPER(nombre) AS nombre_mayuscula, -- Convierte a mayusculas.
    LENGTH(nombre) AS cantidad_letras -- Cuenta caracteres.
FROM alumnos;
```

```sql
SELECT
    nombre,
    ROUND(precio, 0) AS precio_redondeado -- Redondea el precio.
FROM productos;
```

## Ejercicio resuelto

Mostrar productos activos con precio mayor a 10000, ordenados de mayor a menor precio.

```sql
SELECT nombre, precio
FROM productos
WHERE activo = true AND precio > 10000 -- Filtramos por dos condiciones.
ORDER BY precio DESC; -- Ordenamos los mas caros primero.
```

## Practica

1. Buscar alumnos de Rosario.
2. Buscar alumnos cuyo nombre contenga la letra `a`.
3. Mostrar productos entre 5000 y 20000 pesos.
4. Ordenar cursos por fecha de inicio.
