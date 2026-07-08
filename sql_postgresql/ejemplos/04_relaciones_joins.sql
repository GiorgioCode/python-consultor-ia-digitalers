-- 04 - Relaciones y JOIN.

SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id -- Une inscripciones con alumnos.
INNER JOIN cursos ON cursos.id = inscripciones.curso_id; -- Une inscripciones con cursos.

SELECT
    alumnos.nombre AS alumno,
    inscripciones.id AS inscripcion_id
FROM alumnos
LEFT JOIN inscripciones ON alumnos.id = inscripciones.alumno_id -- Incluye alumnos sin inscripciones.
ORDER BY alumnos.nombre;

SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso,
    inscripciones.fecha_inscripcion
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
ORDER BY alumnos.nombre, cursos.nombre;

SELECT
    alumnos.nombre AS alumno,
    cursos.nombre AS curso,
    inscripciones.nota_final
FROM inscripciones
INNER JOIN alumnos ON alumnos.id = inscripciones.alumno_id
INNER JOIN cursos ON cursos.id = inscripciones.curso_id
WHERE inscripciones.nota_final IS NOT NULL -- Solo inscripciones con nota.
ORDER BY inscripciones.nota_final DESC;
