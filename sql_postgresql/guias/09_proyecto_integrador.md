# 09 - Proyecto integrador

## Objetivo

Construir una base de datos pequena para practicar SQL con PostgreSQL de punta a punta.

El proyecto sera un sistema simple de capacitaciones.

## Modelo

Tablas principales:

- `alumnos`
- `cursos`
- `docentes`
- `inscripciones`
- `pagos`

Relaciones:

- Un docente puede dictar muchos cursos.
- Un curso pertenece a un docente.
- Un alumno puede inscribirse a muchos cursos.
- Un curso puede tener muchos alumnos.
- Una inscripcion puede tener pagos.

## Requisitos

1. Crear las tablas con claves primarias.
2. Usar claves foraneas para las relaciones.
3. Usar `NOT NULL` donde corresponda.
4. Usar `UNIQUE` para emails.
5. Insertar datos de prueba.
6. Resolver consultas de lectura.
7. Crear al menos una vista.
8. Crear al menos un indice.

## Consultas a resolver

1. Listar alumnos con ciudad y email.
2. Listar cursos con docente.
3. Mostrar inscripciones con alumno, curso y fecha.
4. Calcular cantidad de alumnos por curso.
5. Calcular promedio de nota final por curso.
6. Mostrar alumnos aprobados.
7. Mostrar pagos por alumno.
8. Buscar cursos sin inscripciones usando `LEFT JOIN`.

## Resolucion base

El archivo [../ejemplos/08_proyecto_integrador.sql](../ejemplos/08_proyecto_integrador.sql) contiene una resolucion completa con comentarios.

Ejecutalo asi:

```bash
psql -d practica_sql -f ejemplos/08_proyecto_integrador.sql
```

## Extension propuesta

Agregar:

- Tabla `categorias`.
- Relacion entre `cursos` y `categorias`.
- Consulta de cantidad de cursos por categoria.
- Vista `vista_resumen_cursos`.
- Constraint para que el precio del curso no sea negativo.
