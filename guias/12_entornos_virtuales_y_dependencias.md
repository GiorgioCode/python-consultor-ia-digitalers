# 12 - Entornos virtuales y dependencias

## Objetivo

Entender que son los entornos virtuales, para que sirve `pip`, que problema resuelven herramientas como `venv` y `pipenv`, y por que conviene usarlas antes de trabajar con librerias externas.

Hasta ahora usamos Python casi sin instalar nada extra. Pero cuando un proyecto necesita librerias, por ejemplo `groq`, `requests`, `pandas` o `flask`, aparece una pregunta importante:

```text
Donde se instalan esas librerias?
```

La respuesta recomendada es: dentro de un entorno separado para cada proyecto.

## Que es una dependencia

Una dependencia es una libreria que nuestro programa necesita para funcionar.

Por ejemplo, si un archivo tiene esta linea:

```python
from groq import Groq
```

Entonces el proyecto depende de la libreria `groq`.

Si esa libreria no esta instalada, Python mostrara un error parecido a este:

```text
ModuleNotFoundError: No module named 'groq'
```

## Que es `pip`

`pip` es la herramienta que permite instalar librerias de Python.

Ejemplo:

```bash
pip install groq
```

En algunos sistemas puede usarse:

```bash
pip3 install groq
```

`pip` descarga la libreria y la deja disponible para que Python pueda importarla.

## El problema de instalar todo globalmente

Si instalamos todas las librerias en el Python principal de la computadora, pueden aparecer problemas:

- Un proyecto necesita una version de una libreria.
- Otro proyecto necesita otra version distinta.
- No recordamos que librerias usa cada proyecto.
- El proyecto funciona en nuestra computadora, pero no en otra.
- El Python global se llena de paquetes que no siempre necesitamos.

Por eso se usan entornos virtuales.

## Que es un entorno virtual

Un entorno virtual es una carpeta que contiene una instalacion aislada de Python y sus librerias.

La idea es simple:

```text
Proyecto A -> sus propias librerias
Proyecto B -> sus propias librerias
Proyecto C -> sus propias librerias
```

Asi cada proyecto puede tener sus dependencias sin mezclar todo en el sistema.

## Crear un entorno con `venv`

`venv` viene incluido con Python. No hace falta instalarlo aparte.

Desde la carpeta del proyecto:

```bash
python -m venv .venv
```

En algunos sistemas:

```bash
python3 -m venv .venv
```

Esto crea una carpeta llamada `.venv`.

## Activar el entorno

En macOS o Linux:

```bash
source .venv/bin/activate
```

En Windows PowerShell:

```powershell
.venv\Scripts\Activate.ps1
```

Cuando el entorno esta activo, normalmente la terminal muestra algo como:

```text
(.venv)
```

Eso indica que las instalaciones con `pip` se haran dentro de ese entorno.

## Instalar dependencias dentro del entorno

Con el entorno activo:

```bash
pip install groq
```

Luego el programa ya puede usar:

```python
from groq import Groq
```

## Guardar las dependencias

Para que otra persona pueda instalar las mismas librerias, se usa un archivo llamado `requirements.txt`.

Podemos generarlo con:

```bash
pip freeze > requirements.txt
```

Y otra persona puede instalar todo con:

```bash
pip install -r requirements.txt
```

En este repositorio usamos `requirements.txt` para indicar que la guia de agentes necesita la libreria `groq`.

## Desactivar el entorno

Cuando terminas de trabajar:

```bash
deactivate
```

Esto cierra el entorno virtual y vuelve al Python normal del sistema.

## Que es `pipenv`

`pipenv` es otra herramienta para manejar entornos virtuales y dependencias.

A diferencia de usar `venv` y `pip` por separado, `pipenv` combina varias tareas:

- Crea un entorno virtual.
- Instala dependencias.
- Guarda las dependencias en un archivo `Pipfile`.
- Genera un archivo `Pipfile.lock` con versiones exactas.

## Instalar `pipenv`

Si no esta instalado:

```bash
pip install pipenv
```

O, segun el sistema:

```bash
pip3 install pipenv
```

## Crear un entorno con `pipenv`

Desde la carpeta del proyecto:

```bash
pipenv install
```

Esto crea un entorno virtual y un archivo `Pipfile`.

Para instalar una libreria:

```bash
pipenv install groq
```

Para entrar al entorno:

```bash
pipenv shell
```

Para ejecutar un archivo sin entrar al entorno:

```bash
pipenv run python archivo.py
```

## `venv` o `pipenv`

Las dos opciones sirven para trabajar de forma ordenada.

`venv` es simple, viene con Python y alcanza para muchos proyectos iniciales.

`pipenv` agrega mas organizacion y automatiza parte del manejo de dependencias, pero requiere instalar una herramienta extra.

Para este curso, una buena recomendacion es:

- Usar `venv` para entender que es un entorno virtual.
- Conocer `pipenv` como alternativa mas automatizada.
- Usar siempre algun entorno virtual cuando el proyecto tenga librerias externas.

## Flujo recomendado con `venv`

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python ejemplos/13_agentes_con_groq/agente_tutor.py
deactivate
```

En Windows PowerShell:

```powershell
python -m venv .venv
.venv\Scripts\Activate.ps1
pip install -r requirements.txt
python ejemplos/13_agentes_con_groq/agente_tutor.py
deactivate
```

## Ejercicio

Crea un entorno virtual para este repositorio.

Debe:

1. Crear un entorno llamado `.venv`.
2. Activarlo.
3. Instalar las dependencias desde `requirements.txt`.
4. Verificar que `groq` este instalado.
5. Desactivar el entorno.

Para verificar la instalacion:

```bash
python -c "import groq; print('groq instalado')"
```

O:

```bash
python3 -c "import groq; print('groq instalado')"
```

## Desafio

Investiga que archivos genera `pipenv` al instalar una dependencia.

Luego responde:

- Para que sirve `Pipfile`.
- Para que sirve `Pipfile.lock`.
- Que diferencia hay entre instalar una libreria globalmente y dentro de un entorno virtual.
