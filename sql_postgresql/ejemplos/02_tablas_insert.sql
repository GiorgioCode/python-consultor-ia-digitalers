-- 02 - Crear tablas e insertar registros.

DROP TABLE IF EXISTS publicaciones;
DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias (
    id SERIAL PRIMARY KEY, -- Entero autoincremental y clave primaria.
    nombre VARCHAR(80) NOT NULL -- Texto obligatorio.
);

INSERT INTO categorias (nombre)
VALUES ('Programacion'); -- Inserta una fila.

INSERT INTO categorias (nombre)
VALUES
    ('Diseno'), -- Segunda categoria.
    ('Datos'), -- Tercera categoria.
    ('Infraestructura'); -- Cuarta categoria.

SELECT id, nombre
FROM categorias; -- Verificamos los registros.

CREATE TABLE publicaciones (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    publicada BOOLEAN NOT NULL DEFAULT false, -- Si no se indica, queda false.
    creada_en TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP -- Fecha y hora automaticas.
);

INSERT INTO publicaciones (titulo)
VALUES ('Primer apunte de SQL'); -- Usa valores DEFAULT para publicada y creada_en.

INSERT INTO publicaciones (titulo, publicada)
VALUES ('Guia de PostgreSQL', true); -- Indicamos explicitamente publicada.

SELECT *
FROM publicaciones;
