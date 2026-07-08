-- 07 - Vistas, indices y EXPLAIN.

CREATE OR REPLACE VIEW vista_inscripciones AS
SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso,
    inscripciones.fecha_inscripcion,
    inscripciones.nota_final
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id
INNER JOIN cursos ON cursos.id = inscripciones.curso_id;

SELECT *
FROM vista_inscripciones
WHERE nota_final >= 7; -- Consulta sobre la vista.

CREATE INDEX IF NOT EXISTS idx_alumnos_ciudad
ON alumnos (ciudad); -- Acelera busquedas por ciudad.

EXPLAIN
SELECT nombre, ciudad
FROM alumnos
WHERE ciudad = 'Rosario'; -- Muestra el plan estimado.

CREATE OR REPLACE VIEW vista_alumnos_aprobados AS
SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso,
    inscripciones.nota_final
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
WHERE inscripciones.nota_final >= 6; -- Solo aprobados.

SELECT *
FROM vista_alumnos_aprobados
ORDER BY alumno;
