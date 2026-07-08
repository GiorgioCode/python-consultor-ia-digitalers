# 01 - Introduccion, entorno y forma de trabajo

## Objetivo

Entender que es SQL, para que sirve PostgreSQL y como ejecutar consultas de practica paso a paso.

SQL significa Structured Query Language. Es el lenguaje que usamos para trabajar con bases de datos relacionales.

Con SQL podemos:

- Crear tablas.
- Insertar datos.
- Consultar informacion.
- Filtrar y ordenar resultados.
- Relacionar datos entre tablas.
- Actualizar y borrar registros.
- Crear reglas para cuidar la calidad de los datos.

PostgreSQL es un sistema de gestion de bases de datos relacional. Es potente, gratuito, muy usado en aplicaciones reales y cumple muy bien con los estandares de SQL.

## Base de datos, tabla, fila y columna

Una base de datos contiene tablas.

Una tabla contiene filas y columnas.

Ejemplo conceptual:

```text
Tabla: alumnos

id | nombre | email              | edad
---+--------+--------------------+-----
1  | Ana    | ana@mail.com       | 22
2  | Luis   | luis@mail.com      | 30
3  | Sofia  | sofia@mail.com     | 25
```

- `alumnos` es la tabla.
- `id`, `nombre`, `email` y `edad` son columnas.
- Cada alumno es una fila.
- Cada celda tiene un valor.

## Como conectarse con psql

`psql` es una herramienta de terminal para ejecutar SQL contra PostgreSQL.

Crear una base de datos de practica:

```bash
createdb practica_sql
```

Entrar a la base:

```bash
psql -d practica_sql
```

Ejecutar un archivo SQL:

```bash
psql -d practica_sql -f ejemplos/00_crear_base_practica.sql
```

## Comandos utiles dentro de psql

Estos comandos no son SQL puro. Son comandos propios de `psql`.

```text
\l          Lista bases de datos.
\dt         Lista tablas de la base actual.
\d alumnos  Muestra la estructura de la tabla alumnos.
\q          Sale de psql.
```

## Primer consulta

```sql
SELECT 'Hola SQL' AS mensaje; -- Devuelve un texto con el alias mensaje.
```

`SELECT` permite consultar datos. En este caso no leemos una tabla, solo pedimos que PostgreSQL devuelva un valor.

## Buenas practicas para estudiar

- Ejecuta una guia por vez.
- Lee primero el SQL y despues correlo.
- Cambia valores y observa la salida.
- Si aparece un error, lee el mensaje completo.
- Usa una base de practica, no una base real con datos importantes.

## Ejercicio

1. Crear la base `practica_sql`.
2. Entrar con `psql -d practica_sql`.
3. Ejecutar:

```sql
SELECT 'Estoy practicando PostgreSQL' AS practica;
```

4. Salir con `\q`.
