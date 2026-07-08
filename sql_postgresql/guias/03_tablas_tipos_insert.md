# 03 - Tablas, tipos de datos e INSERT

## Objetivo

Aprender a crear tablas, elegir tipos de datos basicos e insertar registros.

## Crear una tabla

```sql
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY, -- Entero autoincremental y clave primaria.
    nombre VARCHAR(80) NOT NULL -- Texto obligatorio de hasta 80 caracteres.
);
```

`CREATE TABLE` crea una tabla nueva.

Cada columna necesita:

- Un nombre.
- Un tipo de dato.
- Opcionalmente, reglas o constraints.

## Tipos de datos comunes en PostgreSQL

```text
INTEGER      Numero entero.
NUMERIC      Numero decimal exacto, util para dinero.
VARCHAR(n)   Texto con largo maximo.
TEXT         Texto sin largo fijo.
BOOLEAN      Verdadero o falso.
DATE         Fecha.
TIMESTAMP    Fecha y hora.
SERIAL       Entero autoincremental.
```

Para precios conviene `NUMERIC`, no `FLOAT`, porque `NUMERIC` evita errores de precision decimal.

## Insertar datos

```sql
INSERT INTO categorias (nombre)
VALUES ('Programacion'); -- Inserta una fila.
```

Podemos insertar varias filas:

```sql
INSERT INTO categorias (nombre)
VALUES
    ('Diseno'),
    ('Datos'),
    ('Infraestructura');
```

## Ver los datos insertados

```sql
SELECT id, nombre
FROM categorias;
```

## Crear tabla con fecha por defecto

```sql
CREATE TABLE publicaciones (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    publicada BOOLEAN NOT NULL DEFAULT false, -- Si no se indica, queda false.
    creada_en TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP -- Fecha y hora automaticas.
);
```

`DEFAULT` define un valor automatico cuando el `INSERT` no manda esa columna.

## Insertar omitiendo columnas con DEFAULT

```sql
INSERT INTO publicaciones (titulo)
VALUES ('Primer apunte de SQL'); -- publicada y creada_en usan su DEFAULT.
```

## Ejercicio resuelto

Crear una tabla `editoriales` e insertar dos registros.

```sql
CREATE TABLE editoriales (
    id SERIAL PRIMARY KEY, -- Identificador unico.
    nombre VARCHAR(100) NOT NULL, -- Nombre obligatorio.
    activa BOOLEAN NOT NULL DEFAULT true -- Por defecto queda activa.
);

INSERT INTO editoriales (nombre)
VALUES
    ('Editorial Norte'),
    ('Aprender Datos');

SELECT *
FROM editoriales;
```

## Practica

1. Crear una tabla `aulas` con `id`, `nombre` y `capacidad`.
2. Insertar 3 aulas.
3. Consultar solo las aulas con su capacidad.
4. Agregar una columna booleana `disponible` en una nueva tabla de prueba.
