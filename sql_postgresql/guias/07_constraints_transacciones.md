# 07 - Constraints, UPDATE, DELETE y transacciones

## Objetivo

Aprender a proteger datos con constraints, modificar registros con `UPDATE`, borrar con `DELETE` y usar transacciones.

## Constraints

Una constraint es una regla que la base hace cumplir.

Constraints comunes:

```text
PRIMARY KEY  Identifica cada fila.
FOREIGN KEY  Relaciona una tabla con otra.
NOT NULL     No permite valores nulos.
UNIQUE       No permite repetidos.
CHECK        Valida una condicion.
DEFAULT      Define un valor por defecto.
```

## Ejemplo de tabla con reglas

```sql
CREATE TABLE cupones (
    id SERIAL PRIMARY KEY,
    codigo VARCHAR(30) NOT NULL UNIQUE, -- No puede repetirse.
    porcentaje INTEGER NOT NULL CHECK (porcentaje > 0 AND porcentaje <= 100), -- Rango valido.
    activo BOOLEAN NOT NULL DEFAULT true -- Valor automatico.
);
```

Estas reglas evitan datos invalidos aunque el error venga desde una aplicacion.

## UPDATE

`UPDATE` modifica filas existentes.

```sql
UPDATE productos
SET precio = precio * 1.10 -- Aumenta 10%.
WHERE activo = true; -- Solo productos activos.
```

Sin `WHERE`, se modifican todas las filas. Hay que usarlo con cuidado.

## DELETE

`DELETE` borra filas.

```sql
DELETE FROM productos
WHERE activo = false; -- Borra solo productos inactivos.
```

Sin `WHERE`, se borran todas las filas de la tabla.

## Transacciones

Una transaccion permite agrupar operaciones. Si algo sale mal, podemos deshacer todo.

```sql
BEGIN; -- Inicia la transaccion.

UPDATE productos
SET stock = stock - 1
WHERE id = 1 AND stock > 0; -- Descuenta stock solo si hay disponible.

INSERT INTO ventas (producto_id, cantidad, precio_unitario)
VALUES (1, 1, 7500); -- Registra la venta.

COMMIT; -- Confirma los cambios.
```

Si detectamos un problema antes del `COMMIT`:

```sql
ROLLBACK; -- Deshace los cambios pendientes.
```

## Ejercicio resuelto

Desactivar un producto y verificar el cambio dentro de una transaccion.

```sql
BEGIN;

UPDATE productos
SET activo = false
WHERE nombre = 'Teclado mecanico'; -- Cambia solo ese producto.

SELECT nombre, activo
FROM productos
WHERE nombre = 'Teclado mecanico'; -- Verificamos antes de confirmar.

ROLLBACK; -- Deshacemos porque era una prueba.
```

## Practica

1. Crear una tabla con una columna `email UNIQUE`.
2. Intentar insertar dos filas con el mismo email.
3. Actualizar el stock de un producto.
4. Probar un `DELETE` dentro de `BEGIN` y deshacerlo con `ROLLBACK`.
