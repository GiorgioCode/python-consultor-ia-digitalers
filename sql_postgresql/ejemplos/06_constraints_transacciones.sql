-- 06 - Constraints, UPDATE, DELETE y transacciones.

DROP TABLE IF EXISTS cupones;

CREATE TABLE cupones (
    id SERIAL PRIMARY KEY,
    codigo VARCHAR(30) NOT NULL UNIQUE, -- No permite codigos repetidos.
    porcentaje INTEGER NOT NULL CHECK (porcentaje > 0 AND porcentaje <= 100), -- Rango valido.
    activo BOOLEAN NOT NULL DEFAULT true -- Valor por defecto.
);

INSERT INTO cupones (codigo, porcentaje)
VALUES ('BIENVENIDA10', 10); -- Insercion valida.

UPDATE productos
SET precio = precio * 1.10 -- Aumenta 10%.
WHERE activo = true; -- Solo productos activos.

SELECT nombre, precio
FROM productos
ORDER BY nombre; -- Verificamos precios.

BEGIN; -- Inicia una transaccion de prueba.

UPDATE productos
SET activo = false
WHERE nombre = 'Teclado mecanico'; -- Desactiva un producto.

SELECT nombre, activo
FROM productos
WHERE nombre = 'Teclado mecanico'; -- Verificamos dentro de la transaccion.

ROLLBACK; -- Deshace el cambio anterior.

SELECT nombre, activo
FROM productos
WHERE nombre = 'Teclado mecanico'; -- Confirma que sigue activo.

BEGIN; -- Ejemplo de venta atomica.

UPDATE productos
SET stock = stock - 1
WHERE id = 1 AND stock > 0; -- Descuenta stock si hay disponible.

INSERT INTO ventas (producto_id, cantidad, precio_unitario)
VALUES (1, 1, 7500); -- Registra la venta.

COMMIT; -- Confirma ambas operaciones.
