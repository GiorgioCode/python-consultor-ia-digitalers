# Python - Modulo 2 Digitalers

Repositorio de material de estudio para el **Modulo 2 del curso Digitalers de Personal**, correspondiente a la comision del instructor **Jorge Angel Paez**.

Sitio del instructor: [jorgepaez.vercel.app](https://jorgepaez.vercel.app)

## Contenido del repositorio

Este repositorio contiene guias de estudio y ejemplos practicos para aprender los fundamentos de Python desde cero. El material esta orientado a personas que recien se inician en el mundo de la programacion.

La idea principal es avanzar paso a paso: primero leer una guia, entender los conceptos principales y luego ejecutar o modificar los ejemplos practicos relacionados.

## Estructura

```text
.
├── guias/
│   ├── 00_indice.md
│   ├── 01_introduccion_y_entorno.md
│   ├── 02_primer_programa.md
│   └── ...
└── ejemplos/
    ├── 01_introduccion_y_entorno/
    ├── 02_primer_programa/
    ├── 03_variables_y_tipos_de_datos/
    └── ...
```

## Carpeta `guias`

La carpeta `guias` contiene archivos en formato Markdown (`.md`) separados por temas. Cada guia incluye explicaciones, ejemplos y ejercicios para practicar.

Temas incluidos:

- Introduccion a Python y preparacion del entorno.
- Primer programa, comentarios y errores comunes.
- Variables y tipos de datos.
- Entrada y salida de datos.
- Operadores y expresiones.
- Condicionales.
- Bucles.
- Listas, tuplas y diccionarios.
- Funciones.
- Archivos y manejo de errores.
- Proyecto integrador.

El archivo recomendado para comenzar es:

```text
guias/00_indice.md
```

## Carpeta `ejemplos`

La carpeta `ejemplos` contiene archivos Python (`.py`) organizados por cada guia.

Cada subcarpeta corresponde a una guia y contiene los ejemplos practicos asociados. Por ejemplo:

```text
ejemplos/07_bucles/for_range.py
ejemplos/09_funciones/calculadora_funciones.py
ejemplos/11_proyecto_integrador/gestor_tareas.py
```

Estos archivos sirven para ejecutar, modificar y experimentar con el codigo visto en las guias.

## Instalacion de Python

Para trabajar con los ejemplos es necesario tener Python instalado.

Pasos recomendados:

1. Entrar al sitio oficial: [python.org/downloads](https://www.python.org/downloads/)
2. Descargar la version recomendada para tu sistema operativo.
3. Instalar Python.
4. Si usas Windows, marcar la opcion `Add Python to PATH` durante la instalacion.
5. Abrir una terminal y verificar la instalacion:

```bash
python --version
```

En algunos sistemas el comando puede ser:

```bash
python3 --version
```

Si aparece un numero de version, Python quedo instalado correctamente.

## Recomendacion: Visual Studio Code

Se recomienda usar **Visual Studio Code** como editor de codigo para seguir el material del curso.

Visual Studio Code ayuda a:

- Abrir carpetas completas de trabajo.
- Escribir codigo con resaltado de sintaxis.
- Detectar errores simples mientras se escribe.
- Usar una terminal integrada.
- Instalar extensiones utiles para Python.

Pasos recomendados:

1. Descargar Visual Studio Code desde [code.visualstudio.com](https://code.visualstudio.com/)
2. Instalarlo en la computadora.
3. Abrir este repositorio como carpeta.
4. Instalar la extension oficial llamada `Python`.
5. Abrir una terminal integrada desde Visual Studio Code.
6. Ejecutar los ejemplos desde esa terminal.

Para abrir la terminal integrada:

```text
Terminal > New Terminal
```

Usar Visual Studio Code no es obligatorio, pero facilita mucho el trabajo cuando se esta empezando.

## Como usar este material

1. Abrir `guias/00_indice.md`.
2. Leer las guias en orden.
3. Ejecutar los ejemplos de la carpeta `ejemplos`.
4. Modificar los valores del codigo para observar que cambia.
5. Resolver los ejercicios propuestos en cada guia.

Para ejecutar un ejemplo:

```bash
python ejemplos/01_introduccion_y_entorno/hola.py
```

En algunos sistemas puede ser necesario usar:

```bash
python3 ejemplos/01_introduccion_y_entorno/hola.py
```

## Objetivo

El objetivo del repositorio es acompanar el aprendizaje inicial de Python con material simple, ordenado y practico, reforzando los conceptos del Modulo 2 mediante ejemplos concretos.
