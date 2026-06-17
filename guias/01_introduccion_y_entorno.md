# 01 - Introduccion y preparacion del entorno

## Objetivo

Entender que es Python, para que sirve y como preparar lo necesario para empezar a escribir programas.

## Que es programar

Programar es darle instrucciones a una computadora para que realice una tarea.

Una computadora no "adivina" lo que queremos: necesita pasos claros. Por eso programar tambien es aprender a ordenar ideas, dividir problemas grandes en partes pequenas y probar si cada parte funciona.

Un programa puede servir para:

- Hacer calculos.
- Automatizar tareas repetitivas.
- Procesar datos.
- Crear aplicaciones web.
- Crear juegos.
- Trabajar con inteligencia artificial.

## Que es Python

Python es un lenguaje de programacion. Se usa mucho porque su sintaxis es clara y facil de leer.

Fue creado a comienzos de los anos 90 por Guido van Rossum. Con el tiempo se volvio muy popular en educacion, automatizacion, ciencia de datos, desarrollo web e inteligencia artificial porque permite escribir programas utiles con relativamente poco codigo.

Ejemplo de codigo Python:

```python
print("Hola, mundo")
```

La instruccion anterior muestra un mensaje en pantalla.

Aunque este ejemplo es muy simple, tiene algo importante: ya estamos dando una instruccion concreta y viendo una respuesta. Esa relacion entre instruccion y resultado es la base de cualquier programa.

## Instalar Python

Instalar Python es como preparar el "motor" que entiende y ejecuta nuestros archivos `.py`. Sin ese motor, el codigo queda como texto escrito, pero la computadora no sabe que hacer con el.

1. Entra a https://www.python.org/downloads/
2. Descarga la version recomendada para tu sistema operativo.
3. Durante la instalacion, si usas Windows, marca la opcion `Add Python to PATH`.
4. Finaliza la instalacion.

Para verificar que Python esta instalado, abre una terminal y ejecuta:

```bash
python --version
```

En algunos sistemas el comando puede ser:

```bash
python3 --version
```

Si ves un numero de version, Python esta instalado.

## Instalar un editor

Puedes usar cualquier editor de texto, pero es recomendable usar Visual Studio Code.

Un editor de codigo ayuda a trabajar con mas comodidad: colorea las palabras importantes, marca errores simples y permite abrir una terminal en la misma carpeta del proyecto.

1. Entra a https://code.visualstudio.com/
2. Descarga e instala el programa.
3. Abre Visual Studio Code.
4. Instala la extension llamada `Python`.

## Crear tu primer archivo

Los programas suelen guardarse en archivos. En Python, esos archivos normalmente terminan con `.py`, por ejemplo `hola.py` o `calculadora.py`.

1. Crea una carpeta llamada `practica-python`.
2. Abre esa carpeta con Visual Studio Code.
3. Crea un archivo llamado `hola.py`.
4. Escribe:

```python
print("Hola, estoy aprendiendo Python")
```

5. Guarda el archivo.
6. Ejecutalo desde la terminal:

```bash
python hola.py
```

O, si tu sistema usa `python3`:

```bash
python3 hola.py
```

## Ejercicio

Crea un archivo llamado `presentacion.py` que muestre:

- Tu nombre.
- Tu edad.
- Una frase sobre por que quieres aprender Python.

Ejemplo:

```python
print("Me llamo Ana")
print("Tengo 20 anos")
print("Quiero aprender Python para crear mis propios programas")
```
