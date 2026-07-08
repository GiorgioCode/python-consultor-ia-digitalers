# 02 - Consultas basicas con SELECT

## Objetivo

Aprender a consultar datos usando `SELECT`, elegir columnas, usar alias y limitar resultados.

Para practicar esta guia, primero ejecuta:

```bash
psql -d practica_sql -f ejemplos/00_crear_base_practica.sql
```

## Consultar todas las columnas

```sql
SELECT *
FROM alumnos; -- Trae todas las columnas de la tabla alumnos.
```

`*` significa "todas las columnas". Es util para explorar, pero en consultas reales conviene pedir solo las columnas necesarias.

## Consultar columnas especificas

```sql
SELECT nombre, email
FROM alumnos; -- Trae solo nombre y email.
```

Esto hace que la consulta sea mas clara y evita mover datos que no necesitamos.

## Alias con AS

Un alias cambia el nombre con el que se muestra una columna en el resultado.

```sql
SELECT
    nombre AS alumno,
    email AS correo
FROM alumnos;
```

La tabla no cambia. Solo cambia el encabezado del resultado.

## Valores calculados

`SELECT` tambien puede calcular valores.

```sql
SELECT
    nombre,
    edad,
    edad + 1 AS edad_el_anio_proximo -- Calcula un valor nuevo para mostrarlo.
FROM alumnos;
```

## Concatenar texto

En PostgreSQL se puede concatenar texto con `||`.

```sql
SELECT
    nombre || ' <' || email || '>' AS contacto -- Une nombre y email en una sola columna.
FROM alumnos;
```

## Limitar resultados

```sql
SELECT id, nombre
FROM alumnos
LIMIT 2; -- Devuelve solo las primeras 2 filas.
```

`LIMIT` es util cuando una tabla tiene muchas filas y solo queremos mirar una muestra.

## Orden logico de una consulta simple

Aunque escribimos `SELECT` primero, la base suele pensar la consulta asi:

1. `FROM`: de que tabla salen los datos.
2. `SELECT`: que columnas o expresiones se muestran.
3. `LIMIT`: cuantos resultados se devuelven.

## Ejercicio resuelto

Mostrar el nombre de cada curso con un alias `curso_disponible`.

```sql
SELECT nombre AS curso_disponible
FROM cursos; -- Lee los nombres desde la tabla cursos.
```

## Practica

1. Mostrar `nombre` y `edad` de todos los alumnos.
2. Mostrar `nombre` con alias `alumno`.
3. Mostrar una columna calculada `edad_en_5_anios`.
4. Mostrar solo 3 productos.
