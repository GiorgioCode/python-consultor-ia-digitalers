-- 05 - Agrupaciones y subconsultas.

SELECT COUNT(*) AS cantidad_alumnos
FROM alumnos; -- Cuenta filas.

SELECT ciudad, COUNT(*) AS cantidad
FROM alumnos
GROUP BY ciudad -- Agrupa por ciudad.
ORDER BY cantidad DESC;

SELECT
    cursos.nombre AS curso,
    AVG(inscripciones.nota_final) AS promedio
FROM inscripciones
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
WHERE inscripciones.nota_final IS NOT NULL -- Evita notas nulas.
GROUP BY cursos.nombre;

SELECT
    cursos.nombre AS curso,
    COUNT(*) AS cantidad_inscriptos
FROM inscripciones
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
GROUP BY cursos.nombre
HAVING COUNT(*) >= 2; -- Filtra grupos.

SELECT nombre, precio
FROM productos
WHERE precio > (
    SELECT AVG(precio)
    FROM productos -- Precio promedio general.
);

SELECT nombre
FROM alumnos
WHERE id IN (
    SELECT alumno_id
    FROM inscripciones
    WHERE nota_final >= 8 -- Alumnos con alguna nota alta.
);

SELECT
    cursos.nombre AS curso,
    ROUND(AVG(inscripciones.nota_final), 2) AS promedio
FROM inscripciones
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
WHERE inscripciones.nota_final IS NOT NULL
GROUP BY cursos.nombre
HAVING AVG(inscripciones.nota_final) >= 7 -- Promedio minimo.
ORDER BY promedio DESC;
