-- 03 - Filtros, orden y funciones utiles.

SELECT id, nombre, edad
FROM alumnos
WHERE edad >= 25; -- Alumnos de 25 anios o mas.

SELECT nombre, precio
FROM productos
WHERE precio <> 0; -- Productos cuyo precio no es cero.

SELECT nombre, edad, ciudad
FROM alumnos
WHERE edad >= 25 AND ciudad = 'Cordoba'; -- Dos condiciones obligatorias.

SELECT nombre, ciudad
FROM alumnos
WHERE ciudad = 'Rosario' OR ciudad = 'Cordoba'; -- Una u otra ciudad.

SELECT nombre
FROM alumnos
WHERE nombre ILIKE 'a%'; -- Empieza con a o A.

SELECT nombre, ciudad
FROM alumnos
WHERE ciudad IN ('Rosario', 'Cordoba'); -- Ciudad dentro de una lista.

SELECT nombre, edad
FROM alumnos
WHERE edad BETWEEN 20 AND 30; -- Rango inclusivo.

SELECT nombre, edad
FROM alumnos
ORDER BY edad ASC; -- Menor a mayor.

SELECT nombre, precio
FROM productos
ORDER BY precio DESC; -- Mayor a menor.

SELECT
    UPPER(nombre) AS nombre_mayuscula, -- Convierte a mayusculas.
    LENGTH(nombre) AS cantidad_letras -- Cuenta caracteres.
FROM alumnos;

SELECT nombre, ROUND(precio, 0) AS precio_redondeado
FROM productos; -- Redondea precios.

SELECT nombre, precio
FROM productos
WHERE activo = true AND precio > 10000 -- Productos activos y caros.
ORDER BY precio DESC;
