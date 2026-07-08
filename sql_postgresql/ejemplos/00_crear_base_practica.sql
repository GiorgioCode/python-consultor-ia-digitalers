-- 00 - Crear datos base de practica para PostgreSQL.
-- Ejecutar con: psql -d practica_sql -f ejemplos/00_crear_base_practica.sql

DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS inscripciones;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS cursos;
DROP TABLE IF EXISTS alumnos;

CREATE TABLE alumnos (
    id SERIAL PRIMARY KEY, -- Identificador unico del alumno.
    nombre VARCHAR(80) NOT NULL, -- Nombre obligatorio.
    email VARCHAR(120) NOT NULL UNIQUE, -- No permite emails repetidos.
    edad INTEGER NOT NULL CHECK (edad > 0), -- La edad debe ser positiva.
    ciudad VARCHAR(80) NOT NULL -- Ciudad de residencia.
);

CREATE TABLE cursos (
    id SERIAL PRIMARY KEY, -- Identificador unico del curso.
    nombre VARCHAR(100) NOT NULL, -- Nombre del curso.
    fecha_inicio DATE NOT NULL, -- Fecha de inicio.
    precio NUMERIC(10, 2) NOT NULL CHECK (precio >= 0) -- Precio con dos decimales.
);

CREATE TABLE inscripciones (
    id SERIAL PRIMARY KEY, -- Identificador unico de la inscripcion.
    alumno_id INTEGER NOT NULL REFERENCES alumnos(id), -- Relacion con alumnos.
    curso_id INTEGER NOT NULL REFERENCES cursos(id), -- Relacion con cursos.
    fecha_inscripcion DATE NOT NULL DEFAULT CURRENT_DATE, -- Fecha por defecto.
    nota_final NUMERIC(4, 2) CHECK (nota_final >= 0 AND nota_final <= 10), -- Nota opcional entre 0 y 10.
    UNIQUE (alumno_id, curso_id) -- Un alumno no se inscribe dos veces al mismo curso.
);

CREATE TABLE productos (
    id SERIAL PRIMARY KEY, -- Identificador unico del producto.
    nombre VARCHAR(100) NOT NULL, -- Nombre del producto.
    precio NUMERIC(10, 2) NOT NULL CHECK (precio >= 0), -- Precio no negativo.
    stock INTEGER NOT NULL CHECK (stock >= 0), -- Stock no negativo.
    activo BOOLEAN NOT NULL DEFAULT true -- Producto disponible o no.
);

CREATE TABLE ventas (
    id SERIAL PRIMARY KEY, -- Identificador unico de la venta.
    producto_id INTEGER NOT NULL REFERENCES productos(id), -- Producto vendido.
    cantidad INTEGER NOT NULL CHECK (cantidad > 0), -- Cantidad positiva.
    precio_unitario NUMERIC(10, 2) NOT NULL CHECK (precio_unitario >= 0), -- Precio al momento de venta.
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP -- Fecha y hora automaticas.
);

INSERT INTO alumnos (nombre, email, edad, ciudad)
VALUES
    ('Ana', 'ana@mail.com', 22, 'Rosario'),
    ('Luis', 'luis@mail.com', 30, 'Cordoba'),
    ('Sofia', 'sofia@mail.com', 25, 'Rosario'),
    ('Carlos', 'carlos@mail.com', 19, 'Buenos Aires'),
    ('Marta', 'marta@mail.com', 35, 'Cordoba');

INSERT INTO cursos (nombre, fecha_inicio, precio)
VALUES
    ('Python inicial', '2026-08-05', 45000),
    ('SQL con PostgreSQL', '2026-08-12', 52000),
    ('Analisis de datos', '2026-09-01', 68000),
    ('Git y GitHub', '2026-09-10', 30000);

INSERT INTO inscripciones (alumno_id, curso_id, fecha_inscripcion, nota_final)
VALUES
    (1, 1, '2026-07-01', 8.50),
    (1, 2, '2026-07-03', 9.00),
    (2, 1, '2026-07-02', 5.50),
    (3, 2, '2026-07-04', 7.00),
    (4, 4, '2026-07-05', NULL),
    (5, 3, '2026-07-06', 6.50);

INSERT INTO productos (nombre, precio, stock, activo)
VALUES
    ('Mouse', 7500, 20, true),
    ('Teclado mecanico', 28000, 8, true),
    ('Monitor 24', 180000, 5, true),
    ('Cable USB', 3500, 50, true),
    ('Auriculares', 22000, 0, false);

INSERT INTO ventas (producto_id, cantidad, precio_unitario)
VALUES
    (1, 2, 7500),
    (2, 1, 28000),
    (4, 5, 3500);
