-- 08 - Proyecto integrador: sistema simple de capacitaciones.

DROP TABLE IF EXISTS pagos;
DROP TABLE IF EXISTS inscripciones_proyecto;
DROP TABLE IF EXISTS cursos_proyecto;
DROP TABLE IF EXISTS docentes;
DROP TABLE IF EXISTS alumnos_proyecto;

CREATE TABLE alumnos_proyecto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE, -- Evita alumnos duplicados por email.
    ciudad VARCHAR(80) NOT NULL
);

CREATE TABLE docentes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE cursos_proyecto (
    id SERIAL PRIMARY KEY,
    docente_id INTEGER NOT NULL REFERENCES docentes(id), -- Cada curso tiene docente.
    nombre VARCHAR(100) NOT NULL,
    fecha_inicio DATE NOT NULL,
    precio NUMERIC(10, 2) NOT NULL CHECK (precio >= 0) -- Precio no negativo.
);

CREATE TABLE inscripciones_proyecto (
    id SERIAL PRIMARY KEY,
    alumno_id INTEGER NOT NULL REFERENCES alumnos_proyecto(id),
    curso_id INTEGER NOT NULL REFERENCES cursos_proyecto(id),
    fecha_inscripcion DATE NOT NULL DEFAULT CURRENT_DATE,
    nota_final NUMERIC(4, 2) CHECK (nota_final >= 0 AND nota_final <= 10),
    UNIQUE (alumno_id, curso_id) -- No permite doble inscripcion al mismo curso.
);

CREATE TABLE pagos (
    id SERIAL PRIMARY KEY,
    inscripcion_id INTEGER NOT NULL REFERENCES inscripciones_proyecto(id),
    monto NUMERIC(10, 2) NOT NULL CHECK (monto > 0),
    fecha_pago DATE NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO alumnos_proyecto (nombre, email, ciudad)
VALUES
    ('Ana', 'ana.proyecto@mail.com', 'Rosario'),
    ('Luis', 'luis.proyecto@mail.com', 'Cordoba'),
    ('Sofia', 'sofia.proyecto@mail.com', 'Rosario'),
    ('Carlos', 'carlos.proyecto@mail.com', 'Buenos Aires');

INSERT INTO docentes (nombre, email)
VALUES
    ('Marina Lopez', 'marina@mail.com'),
    ('Jorge Perez', 'jorge@mail.com');

INSERT INTO cursos_proyecto (docente_id, nombre, fecha_inicio, precio)
VALUES
    (1, 'SQL inicial', '2026-08-01', 50000),
    (1, 'PostgreSQL practico', '2026-09-01', 65000),
    (2, 'Python para datos', '2026-08-15', 70000);

INSERT INTO inscripciones_proyecto (alumno_id, curso_id, fecha_inscripcion, nota_final)
VALUES
    (1, 1, '2026-07-01', 8),
    (2, 1, '2026-07-02', 5),
    (3, 2, '2026-07-03', 9),
    (4, 3, '2026-07-04', NULL);

INSERT INTO pagos (inscripcion_id, monto, fecha_pago)
VALUES
    (1, 50000, '2026-07-05'),
    (2, 25000, '2026-07-06'),
    (3, 65000, '2026-07-07');

-- 1. Alumnos con ciudad y email.
SELECT nombre, email, ciudad
FROM alumnos_proyecto
ORDER BY nombre;

-- 2. Cursos con docente.
SELECT
    cursos_proyecto.nombre AS curso,
    docentes.nombre AS docente
FROM cursos_proyecto
INNER JOIN docentes ON docentes.id = cursos_proyecto.docente_id
ORDER BY curso;

-- 3. Inscripciones con alumno, curso y fecha.
SELECT
    alumnos_proyecto.nombre AS alumno,
    cursos_proyecto.nombre AS curso,
    inscripciones_proyecto.fecha_inscripcion
FROM inscripciones_proyecto
INNER JOIN alumnos_proyecto ON alumnos_proyecto.id = inscripciones_proyecto.alumno_id
INNER JOIN cursos_proyecto ON cursos_proyecto.id = inscripciones_proyecto.curso_id;

-- 4. Cantidad de alumnos por curso.
SELECT
    cursos_proyecto.nombre AS curso,
    COUNT(*) AS cantidad_alumnos
FROM inscripciones_proyecto
INNER JOIN cursos_proyecto ON cursos_proyecto.id = inscripciones_proyecto.curso_id
GROUP BY cursos_proyecto.nombre;

-- 5. Promedio de nota final por curso.
SELECT
    cursos_proyecto.nombre AS curso,
    ROUND(AVG(inscripciones_proyecto.nota_final), 2) AS promedio
FROM inscripciones_proyecto
INNER JOIN cursos_proyecto ON cursos_proyecto.id = inscripciones_proyecto.curso_id
WHERE inscripciones_proyecto.nota_final IS NOT NULL
GROUP BY cursos_proyecto.nombre;

-- 6. Alumnos aprobados.
SELECT
    alumnos_proyecto.nombre AS alumno,
    cursos_proyecto.nombre AS curso,
    inscripciones_proyecto.nota_final
FROM inscripciones_proyecto
INNER JOIN alumnos_proyecto ON alumnos_proyecto.id = inscripciones_proyecto.alumno_id
INNER JOIN cursos_proyecto ON cursos_proyecto.id = inscripciones_proyecto.curso_id
WHERE inscripciones_proyecto.nota_final >= 6;

-- 7. Pagos por alumno.
SELECT
    alumnos_proyecto.nombre AS alumno,
    SUM(pagos.monto) AS total_pagado
FROM pagos
INNER JOIN inscripciones_proyecto ON inscripciones_proyecto.id = pagos.inscripcion_id
INNER JOIN alumnos_proyecto ON alumnos_proyecto.id = inscripciones_proyecto.alumno_id
GROUP BY alumnos_proyecto.nombre;

-- 8. Cursos sin inscripciones.
SELECT cursos_proyecto.nombre AS curso_sin_inscripciones
FROM cursos_proyecto
LEFT JOIN inscripciones_proyecto ON cursos_proyecto.id = inscripciones_proyecto.curso_id
WHERE inscripciones_proyecto.id IS NULL;

CREATE OR REPLACE VIEW vista_resumen_inscripciones AS
SELECT
    alumnos_proyecto.nombre AS alumno,
    cursos_proyecto.nombre AS curso,
    docentes.nombre AS docente,
    inscripciones_proyecto.nota_final
FROM inscripciones_proyecto
INNER JOIN alumnos_proyecto ON alumnos_proyecto.id = inscripciones_proyecto.alumno_id
INNER JOIN cursos_proyecto ON cursos_proyecto.id = inscripciones_proyecto.curso_id
INNER JOIN docentes ON docentes.id = cursos_proyecto.docente_id;

CREATE INDEX IF NOT EXISTS idx_alumnos_proyecto_ciudad
ON alumnos_proyecto (ciudad); -- Indice para busquedas por ciudad.

SELECT *
FROM vista_resumen_inscripciones
ORDER BY alumno;
