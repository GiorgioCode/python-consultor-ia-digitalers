# 05 - Relaciones y JOIN

## Objetivo

Entender como se relacionan tablas y como consultar datos combinados con `JOIN`.

En una base relacional, no guardamos todo en una sola tabla gigante. Separamos entidades y las relacionamos.

Ejemplo:

- `alumnos` guarda alumnos.
- `cursos` guarda cursos.
- `inscripciones` indica que alumno se anoto a que curso.

## Clave primaria y clave foranea

Una clave primaria identifica una fila.

```sql
id SERIAL PRIMARY KEY -- Cada fila tiene un id unico.
```

Una clave foranea apunta a la clave primaria de otra tabla.

```sql
alumno_id INTEGER REFERENCES alumnos(id) -- alumno_id debe existir en alumnos.id.
```

## INNER JOIN

`INNER JOIN` devuelve filas que tienen coincidencia en ambas tablas.

```sql
SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id -- Une inscripciones con alumnos.
INNER JOIN cursos ON cursos.id = inscripciones.curso_id; -- Une inscripciones con cursos.
```

El `ON` indica como se conectan las tablas.

## LEFT JOIN

`LEFT JOIN` devuelve todas las filas de la tabla izquierda, aunque no haya coincidencia en la derecha.

```sql
SELECT
    alumnos.nombre AS alumno,
    inscripciones.id AS inscripcion_id
FROM alumnos
LEFT JOIN inscripciones ON alumnos.id = inscripciones.alumno_id; -- Muestra alumnos aunque no tengan inscripciones.
```

Si no hay coincidencia, las columnas de la tabla derecha aparecen como `NULL`.

## JOIN con mas informacion

```sql
SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso,
    inscripciones.fecha_inscripcion
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
ORDER BY alumnos.nombre, cursos.nombre;
```

## Errores comunes

### Olvidar el ON

```sql
SELECT *
FROM alumnos
INNER JOIN cursos; -- Incorrecto: falta explicar como se relacionan.
```

### Unir columnas equivocadas

```sql
-- Incorrecto: compara alumno.id contra curso.id, pero no expresa una inscripcion.
SELECT *
FROM alumnos
INNER JOIN cursos ON alumnos.id = cursos.id;
```

La tabla intermedia `inscripciones` existe porque la relacion real es: un alumno puede estar en muchos cursos y un curso puede tener muchos alumnos.

## Ejercicio resuelto

Mostrar alumno, curso y nota final de cada inscripcion con nota cargada.

```sql
SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso,
    inscripciones.nota_final
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
WHERE inscripciones.nota_final IS NOT NULL -- Solo inscripciones con nota.
ORDER BY inscripciones.nota_final DESC;
```

## Practica

1. Mostrar todos los cursos con sus alumnos.
2. Mostrar todos los alumnos aunque no tengan cursos.
3. Mostrar cursos que empiezan despues de una fecha.
4. Mostrar alumno, curso y fecha de inscripcion.
