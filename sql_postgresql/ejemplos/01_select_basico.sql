-- 01 - Consultas basicas con SELECT.

SELECT 'Hola SQL' AS mensaje; -- Consulta sin tabla.

SELECT *
FROM alumnos; -- Todas las columnas de alumnos.

SELECT nombre, email
FROM alumnos; -- Solo columnas necesarias.

SELECT
    nombre AS alumno, -- Alias para mostrar un encabezado mas claro.
    email AS correo
FROM alumnos;

SELECT
    nombre,
    edad,
    edad + 1 AS edad_el_anio_proximo -- Columna calculada.
FROM alumnos;

SELECT
    nombre || ' <' || email || '>' AS contacto -- Concatenacion de texto en PostgreSQL.
FROM alumnos;

SELECT id, nombre
FROM alumnos
LIMIT 2; -- Limita la cantidad de filas devueltas.

SELECT nombre AS curso_disponible
FROM cursos; -- Ejercicio resuelto de la guia.
