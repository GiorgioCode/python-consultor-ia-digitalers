# 06 - Agrupaciones y subconsultas

## Objetivo

Aprender a resumir datos con `GROUP BY`, filtrar grupos con `HAVING` y resolver consultas usando subconsultas.

## Funciones de agregacion

Las funciones de agregacion calculan un resultado a partir de muchas filas.

```sql
SELECT COUNT(*) AS cantidad_alumnos
FROM alumnos; -- Cuenta filas.
```

Funciones comunes:

```text
COUNT(*)    Cuenta filas.
SUM(x)      Suma valores.
AVG(x)      Calcula promedio.
MIN(x)      Valor minimo.
MAX(x)      Valor maximo.
```

## GROUP BY

`GROUP BY` agrupa filas que comparten un valor.

```sql
SELECT ciudad, COUNT(*) AS cantidad
FROM alumnos
GROUP BY ciudad -- Agrupa alumnos por ciudad.
ORDER BY cantidad DESC;
```

Cada fila del resultado representa un grupo.

## Promedios por curso

```sql
SELECT
    cursos.nombre AS curso,
    AVG(inscripciones.nota_final) AS promedio
FROM inscripciones
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
WHERE inscripciones.nota_final IS NOT NULL -- Evita promediar notas no cargadas.
GROUP BY cursos.nombre;
```

## HAVING

`WHERE` filtra filas antes de agrupar.

`HAVING` filtra grupos despues de agrupar.

```sql
SELECT
    cursos.nombre AS curso,
    COUNT(*) AS cantidad_inscriptos
FROM inscripciones
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
GROUP BY cursos.nombre
HAVING COUNT(*) >= 2; -- Filtra grupos con 2 o mas inscripciones.
```

## Subconsultas

Una subconsulta es una consulta dentro de otra.

Ejemplo: productos mas caros que el promedio.

```sql
SELECT nombre, precio
FROM productos
WHERE precio > (
    SELECT AVG(precio)
    FROM productos -- Esta consulta calcula el precio promedio.
);
```

## Subconsulta con IN

```sql
SELECT nombre
FROM alumnos
WHERE id IN (
    SELECT alumno_id
    FROM inscripciones
    WHERE nota_final >= 8 -- Devuelve alumnos con alguna nota alta.
);
```

## Ejercicio resuelto

Mostrar cursos con promedio de nota final mayor o igual a 7.

```sql
SELECT
    cursos.nombre AS curso,
    ROUND(AVG(inscripciones.nota_final), 2) AS promedio
FROM inscripciones
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
WHERE inscripciones.nota_final IS NOT NULL
GROUP BY cursos.nombre
HAVING AVG(inscripciones.nota_final) >= 7 -- Filtra por promedio del grupo.
ORDER BY promedio DESC;
```

## Practica

1. Contar alumnos por ciudad.
2. Calcular precio promedio de productos activos.
3. Mostrar cursos con mas de un inscripto.
4. Buscar productos mas caros que el promedio.
