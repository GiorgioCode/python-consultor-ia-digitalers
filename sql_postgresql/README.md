# SQL paso a paso con PostgreSQL

Este modulo es independiente de las guias de Python. Esta pensado para aprender SQL desde cero usando PostgreSQL como motor principal.

## Orden sugerido

0. [Indice de guias](guias/00_indice.md)
1. [Base conceptual sobre bases de datos](guias/00_base_conceptual.md)
2. [Introduccion, entorno y forma de trabajo](guias/01_intro_y_entorno.md)
3. [Consultas basicas con SELECT](guias/02_consultas_select.md)
4. [Tablas, tipos de datos e INSERT](guias/03_tablas_tipos_insert.md)
5. [Filtros, orden y funciones utiles](guias/04_filtros_orden_funciones.md)
6. [Relaciones y JOIN](guias/05_relaciones_joins.md)
7. [Agrupaciones y subconsultas](guias/06_agrupaciones_subconsultas.md)
8. [Constraints, UPDATE, DELETE y transacciones](guias/07_constraints_transacciones.md)
9. [Vistas, indices y EXPLAIN](guias/08_vistas_indices_explain.md)
10. [Proyecto integrador](guias/09_proyecto_integrador.md)

## Ejemplos

Los scripts estan en la carpeta [ejemplos](ejemplos).

Orden recomendado desde la raiz del repositorio:

```bash
psql -d practica_sql -f sql_postgresql/ejemplos/00_crear_base_practica.sql
psql -d practica_sql -f sql_postgresql/ejemplos/01_select_basico.sql
psql -d practica_sql -f sql_postgresql/ejemplos/02_tablas_insert.sql
psql -d practica_sql -f sql_postgresql/ejemplos/03_filtros_orden_funciones.sql
psql -d practica_sql -f sql_postgresql/ejemplos/04_relaciones_joins.sql
psql -d practica_sql -f sql_postgresql/ejemplos/05_agrupaciones_subconsultas.sql
psql -d practica_sql -f sql_postgresql/ejemplos/06_constraints_transacciones.sql
psql -d practica_sql -f sql_postgresql/ejemplos/07_vistas_indices_explain.sql
```

## Requisitos

- PostgreSQL instalado.
- Acceso a una terminal.
- Una base de datos de practica llamada `practica_sql`.

Para crear la base:

```bash
createdb practica_sql
```

Si la base ya existe y queres reiniciar los datos:

```bash
psql -d practica_sql -f sql_postgresql/ejemplos/00_crear_base_practica.sql
```
