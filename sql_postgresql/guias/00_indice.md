# Guias de SQL con PostgreSQL

Estas guias estan pensadas para aprender SQL paso a paso usando PostgreSQL.

La idea es practicar con una base pequena y repetir los comandos hasta entender que hace cada parte de una consulta.

## Orden sugerido

1. [Base conceptual sobre bases de datos](00_base_conceptual.md)
2. [Introduccion, entorno y forma de trabajo](01_intro_y_entorno.md)
3. [Consultas basicas con SELECT](02_consultas_select.md)
4. [Tablas, tipos de datos e INSERT](03_tablas_tipos_insert.md)
5. [Filtros, orden y funciones utiles](04_filtros_orden_funciones.md)
6. [Relaciones y JOIN](05_relaciones_joins.md)
7. [Agrupaciones y subconsultas](06_agrupaciones_subconsultas.md)
8. [Constraints, UPDATE, DELETE y transacciones](07_constraints_transacciones.md)
9. [Vistas, indices y EXPLAIN](08_vistas_indices_explain.md)
10. [Proyecto integrador](09_proyecto_integrador.md)

## Scripts de practica

Los ejemplos ejecutables estan en `../ejemplos`.

Primero crear la base:

```bash
createdb practica_sql
```

Despues cargar los datos base:

```bash
psql -d practica_sql -f ../ejemplos/00_crear_base_practica.sql
```

Si estas parado en la raiz del repositorio, usa:

```bash
psql -d practica_sql -f sql_postgresql/ejemplos/00_crear_base_practica.sql
```
