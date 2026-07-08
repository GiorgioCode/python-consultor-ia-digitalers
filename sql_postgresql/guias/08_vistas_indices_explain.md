# 08 - Vistas, indices y EXPLAIN

## Objetivo

Conocer herramientas basicas para mejorar consultas y organizar lecturas frecuentes: vistas, indices y `EXPLAIN`.

## Vistas

Una vista es una consulta guardada con nombre.

```sql
CREATE VIEW vista_inscripciones AS
SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso,
    inscripciones.fecha_inscripcion,
    inscripciones.nota_final
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id
INNER JOIN cursos ON cursos.id = inscripciones.curso_id;
```

Despues se puede consultar como si fuera una tabla:

```sql
SELECT *
FROM vista_inscripciones
WHERE nota_final >= 7; -- Filtra sobre el resultado de la vista.
```

La vista no duplica los datos. Guarda la definicion de la consulta.

## Indices

Un indice ayuda a buscar mas rapido por una o varias columnas.

```sql
CREATE INDEX idx_alumnos_ciudad
ON alumnos (ciudad); -- Acelera busquedas frecuentes por ciudad.
```

No conviene crear indices para todo. Cada indice ocupa espacio y puede hacer mas lentos los `INSERT`, `UPDATE` y `DELETE`.

Conviene considerar indices cuando:

- Una tabla tiene muchas filas.
- Una columna se usa mucho en `WHERE`.
- Una columna se usa mucho para unir tablas.
- Una columna se usa mucho para ordenar.

## EXPLAIN

`EXPLAIN` muestra como PostgreSQL planea ejecutar una consulta.

```sql
EXPLAIN
SELECT nombre, ciudad
FROM alumnos
WHERE ciudad = 'Rosario';
```

`EXPLAIN ANALYZE` ejecuta la consulta y muestra tiempos reales.

```sql
EXPLAIN ANALYZE
SELECT nombre, ciudad
FROM alumnos
WHERE ciudad = 'Rosario';
```

En bases pequenas, la diferencia no suele notarse. El objetivo de esta guia es reconocer la herramienta.

## Ejercicio resuelto

Crear una vista de alumnos aprobados.

```sql
CREATE OR REPLACE VIEW vista_alumnos_aprobados AS
SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso,
    inscripciones.nota_final
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
WHERE inscripciones.nota_final >= 6; -- La vista solo incluye aprobados.

SELECT *
FROM vista_alumnos_aprobados
ORDER BY alumno;
```

## Practica

1. Crear una vista de productos activos.
2. Crear un indice sobre `productos(nombre)`.
3. Usar `EXPLAIN` en una consulta por ciudad.
4. Comparar una consulta directa con una consulta a una vista.
