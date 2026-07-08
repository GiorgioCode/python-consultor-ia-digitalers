# 00 - Base conceptual sobre bases de datos

## Objetivo

Entender que es una base de datos, para que se usa, que tipos existen y que caracteristicas debe cumplir para ser confiable.

Antes de escribir SQL conviene entender el problema que SQL ayuda a resolver: guardar, organizar, consultar y proteger datos.

## Que es una base de datos

Una base de datos es un sistema organizado para almacenar informacion de manera que pueda consultarse, modificarse y mantenerse en el tiempo.

No es solo "un lugar donde guardar datos". Una buena base de datos tambien define:

- Como se estructuran los datos.
- Que reglas deben cumplir.
- Como se relacionan entre si.
- Quienes pueden leerlos o modificarlos.
- Como se recuperan si ocurre un error.

Ejemplo simple:

```text
Un sistema de cursos necesita guardar:

- Alumnos.
- Cursos.
- Docentes.
- Inscripciones.
- Pagos.
```

Podriamos guardar todo en archivos de texto, pero cuando el sistema crece aparecen problemas: datos repetidos, errores de carga, busquedas lentas, dificultad para relacionar informacion y riesgo de perdida.

Una base de datos ayuda a resolver esos problemas.

## Datos, informacion y conocimiento

No todo dato aislado es informacion util.

```text
Dato: 8
Informacion: Ana obtuvo nota 8 en SQL.
Conocimiento: Ana aprobo SQL porque la nota minima era 6.
```

Una base de datos guarda datos, pero su estructura permite convertirlos en informacion mediante consultas.

## Que es un DBMS

DBMS significa Database Management System, o sistema gestor de bases de datos.

Es el software que administra la base.

Ejemplos:

- PostgreSQL.
- MySQL.
- MariaDB.
- SQLite.
- SQL Server.
- Oracle Database.
- MongoDB.
- Redis.

PostgreSQL es un DBMS relacional. Eso significa que organiza los datos en tablas relacionadas y permite consultarlos con SQL.

## Base de datos relacional

Una base de datos relacional organiza informacion en tablas.

Cada tabla representa una entidad o concepto.

```text
Tabla alumnos

id | nombre | email
---+--------+----------------
1  | Ana    | ana@mail.com
2  | Luis   | luis@mail.com
```

```text
Tabla cursos

id | nombre
---+---------------------
1  | Python inicial
2  | SQL con PostgreSQL
```

```text
Tabla inscripciones

id | alumno_id | curso_id
---+-----------+---------
1  | 1         | 2
2  | 2         | 1
```

La tabla `inscripciones` relaciona alumnos con cursos.

La idea central del modelo relacional es evitar guardar todo mezclado. En lugar de repetir el nombre del alumno y del curso muchas veces, se guardan identificadores que conectan tablas.

## Conceptos principales del modelo relacional

```text
Tabla       Conjunto de filas y columnas.
Fila        Registro individual.
Columna     Dato especifico de cada fila.
Clave primaria  Identificador unico de una fila.
Clave foranea   Referencia a una fila de otra tabla.
Relacion    Conexion logica entre tablas.
```

Ejemplo:

```text
alumnos.id es clave primaria.
inscripciones.alumno_id es clave foranea hacia alumnos.id.
```

Esto permite que la base controle que no exista una inscripcion para un alumno inexistente.

## Tipos de bases de datos

No todas las bases de datos organizan la informacion igual.

## Relacionales

Usan tablas, filas, columnas y relaciones.

Ejemplos:

- PostgreSQL.
- MySQL.
- MariaDB.
- SQLite.
- SQL Server.

Son muy buenas cuando:

- Los datos tienen estructura clara.
- Hay relaciones importantes.
- Se necesitan reglas de integridad.
- Se requieren consultas complejas.
- Se trabaja con transacciones.

Ejemplo de uso: sistema de alumnos, facturacion, turnos, inventario, ventas.

## Documentales

Guardan documentos, normalmente en formato similar a JSON.

Ejemplo:

- MongoDB.

Son utiles cuando:

- Los datos tienen estructura flexible.
- No todos los registros tienen los mismos campos.
- Se trabaja con documentos completos.

Ejemplo de uso: catalogos con atributos variables, contenido semiestructurado, perfiles flexibles.

## Clave-valor

Guardan datos como pares `clave -> valor`.

Ejemplo:

- Redis.

Son utiles cuando:

- Se necesita mucha velocidad.
- El acceso principal es por clave.
- Se guardan sesiones, cache o contadores.

Ejemplo:

```text
usuario:15:sesion -> token_activo
```

## Columnar

Organizan los datos por columnas en lugar de priorizar filas completas.

Ejemplos:

- ClickHouse.
- Cassandra.

Son utiles para analisis masivo, metricas y grandes volumenes de lectura.

## Grafos

Representan datos como nodos y relaciones.

Ejemplo:

- Neo4j.

Son utiles cuando las relaciones son el centro del problema.

Ejemplo de uso: redes sociales, recomendaciones, rutas, deteccion de fraude.

## Series temporales

Optimizadas para datos que cambian en el tiempo.

Ejemplos:

- TimescaleDB.
- InfluxDB.

Son utiles para metricas, sensores, monitoreo y eventos ordenados por fecha.

## SQL y NoSQL

SQL es el lenguaje mas usado para bases relacionales.

NoSQL agrupa motores que no siguen estrictamente el modelo relacional tradicional. No significa "sin SQL" en todos los casos, sino "no solamente SQL".

Comparacion general:

```text
SQL
- Modelo estructurado.
- Tablas y relaciones.
- Buen soporte para transacciones.
- Consultas declarativas.
- Integridad fuerte.

NoSQL
- Modelos mas flexibles.
- Documentos, clave-valor, grafos o columnas.
- Puede escalar horizontalmente con facilidad.
- Suele adaptarse bien a datos semiestructurados.
```

No hay una opcion universalmente mejor. La eleccion depende del problema.

Para este curso usamos PostgreSQL porque permite aprender fundamentos solidos de SQL, relaciones, integridad y consultas reales.

## Caracteristicas que debe cumplir una buena base de datos

## Integridad

Los datos deben ser correctos y coherentes.

Ejemplos:

- Una edad no deberia ser negativa.
- Un email de alumno no deberia repetirse.
- Una inscripcion no deberia apuntar a un curso inexistente.

En PostgreSQL esto se logra con constraints como `NOT NULL`, `UNIQUE`, `CHECK`, `PRIMARY KEY` y `FOREIGN KEY`.

## Consistencia

La base debe pasar de un estado valido a otro estado valido.

Ejemplo:

Si se registra una venta, tambien deberia actualizarse el stock. No deberia quedar la venta registrada si el stock no pudo descontarse.

## Persistencia

Los datos deben permanecer guardados aunque el programa que los uso se cierre.

Una lista en memoria se pierde al terminar el programa. Una base de datos conserva la informacion en disco.

## Seguridad

No todos los usuarios deberian poder hacer todo.

Ejemplos:

- Un usuario puede consultar cursos.
- Un administrador puede crear cursos.
- Un proceso interno puede registrar pagos.

Una base de datos debe permitir controlar permisos, usuarios y accesos.

## Disponibilidad

La base debe estar accesible cuando el sistema la necesita.

En sistemas reales esto puede implicar backups, monitoreo, replicas y planes de recuperacion.

## Rendimiento

La base debe responder en tiempos razonables.

El rendimiento depende de:

- Buen diseno de tablas.
- Consultas bien escritas.
- Indices adecuados.
- Volumen de datos.
- Configuracion del servidor.

## Escalabilidad

La base debe poder acompanhar el crecimiento.

Puede crecer en:

- Cantidad de datos.
- Cantidad de usuarios.
- Cantidad de consultas.
- Complejidad de reportes.

## Mantenibilidad

La estructura debe poder entenderse y modificarse sin romper todo.

Ayudan:

- Nombres claros.
- Tablas con responsabilidades definidas.
- Relaciones bien modeladas.
- Migraciones ordenadas.
- Documentacion minima.

## ACID

ACID resume cuatro propiedades importantes de las transacciones.

```text
Atomicidad     Todo ocurre completo o no ocurre nada.
Consistencia   La base queda en un estado valido.
Aislamiento    Las operaciones simultaneas no se pisan incorrectamente.
Durabilidad    Una vez confirmado, el cambio permanece guardado.
```

Ejemplo:

```text
Registrar una venta:

1. Descontar stock.
2. Crear la venta.
3. Registrar el pago.
```

Si falla el pago, no queremos que quede el stock descontado y la venta incompleta. Una transaccion permite confirmar todo junto o deshacer todo.

PostgreSQL cumple estas propiedades y por eso es una buena opcion para sistemas donde la confiabilidad importa.

## Diseno antes de escribir SQL

Antes de crear tablas conviene responder:

- Que entidades existen.
- Que datos tiene cada entidad.
- Que dato identifica de forma unica a cada fila.
- Que relaciones existen entre entidades.
- Que reglas deben cumplirse siempre.
- Que consultas necesitara el sistema.

Ejemplo:

```text
Entidad: Alumno
Datos: nombre, email, edad, ciudad
Identificador: id
Regla: email no se repite

Entidad: Curso
Datos: nombre, fecha_inicio, precio
Identificador: id
Regla: precio no puede ser negativo

Relacion: Inscripcion
Datos: alumno_id, curso_id, fecha_inscripcion, nota_final
Regla: un alumno no se inscribe dos veces al mismo curso
```

Ese razonamiento despues se traduce a tablas, columnas y constraints.

## Resumen

- Una base de datos organiza datos para consultarlos y mantenerlos en el tiempo.
- Un DBMS es el software que administra la base.
- PostgreSQL es un DBMS relacional.
- Las bases relacionales usan tablas, filas, columnas y relaciones.
- Existen otros tipos de bases: documentales, clave-valor, columnares, grafos y series temporales.
- Una buena base debe cuidar integridad, consistencia, persistencia, seguridad, disponibilidad, rendimiento, escalabilidad y mantenibilidad.
- ACID describe propiedades clave de las transacciones.
- Antes de escribir SQL, conviene modelar entidades, relaciones y reglas.

## Practica conceptual

Elegir un sistema simple, por ejemplo biblioteca, turnos medicos, ventas o cursos.

Responder:

1. Que entidades principales tiene.
2. Que datos guarda cada entidad.
3. Que campo podria identificar cada fila.
4. Que relaciones hay entre entidades.
5. Que reglas deberia hacer cumplir la base.
