# 13 - Agentes basicos con Groq

## Objetivo

Entender que es un agente basico de inteligencia artificial y crear uno desde Python usando Groq.

Hasta ahora los programas respondian solo con reglas escritas por nosotros: condicionales, bucles, funciones y archivos. Con un modelo de lenguaje podemos crear programas que interpretan texto y generan respuestas mas flexibles.

## Que es Groq

Groq es una plataforma que permite usar modelos de inteligencia artificial desde codigo. En este caso vamos a usar su API desde Python para enviar mensajes y recibir respuestas.

La idea general es:

1. Python recibe un mensaje del usuario.
2. Python envia ese mensaje a Groq.
3. Groq responde usando un modelo de lenguaje.
4. Python muestra la respuesta en la terminal.

## Que es un agente

En este curso vamos a usar una definicion simple:

Un agente es un programa que usa un modelo de inteligencia artificial para cumplir un objetivo, siguiendo instrucciones y manteniendo un contexto.

Un agente basico suele tener:

- Un objetivo.
- Instrucciones de comportamiento.
- Una conversacion o memoria temporal.
- Opcionalmente, herramientas escritas en Python.

Por ejemplo, un agente tutor puede tener este objetivo:

```text
Ayudar a estudiantes principiantes a practicar Python.
```

Y estas instrucciones:

```text
Responde de forma clara, breve y con ejemplos simples.
No resuelvas todo directamente si el estudiante puede pensar un paso.
```

## Preparar el entorno

Para usar Groq desde Python hay que instalar la libreria oficial:

```bash
pip install groq
```

Si estas trabajando con este repositorio, tambien puedes instalar las dependencias con:

```bash
pip install -r requirements.txt
```

Antes de instalar dependencias, se recomienda crear y activar un entorno virtual. Ese tema se explica en la guia anterior.

## Crear una API key

Para conectarse con Groq necesitas una API key.

Pasos generales:

1. Entrar a la consola de Groq.
2. Crear o copiar una API key.
3. Guardarla como variable de entorno llamada `GROQ_API_KEY`.

En macOS o Linux:

```bash
export GROQ_API_KEY="tu_api_key"
```

En Windows PowerShell:

```powershell
$env:GROQ_API_KEY="tu_api_key"
```

No escribas tu API key directamente dentro del codigo. Una clave es privada y debe cuidarse como una contrasena.

## Primer agente

Este ejemplo crea un agente tutor. El programa mantiene un historial de la conversacion mientras esta abierto.

```python
import os
from groq import Groq

MODELO = "llama-3.3-70b-versatile"

api_key = os.getenv("GROQ_API_KEY")

if api_key is None:
    print("Falta configurar GROQ_API_KEY")
    raise SystemExit

cliente = Groq(api_key=api_key)
historial = []

instrucciones = """
Eres un tutor de Python para estudiantes principiantes.
Responde en espanol claro.
Usa ejemplos cortos.
Si el estudiante pide una solucion, explica tambien el razonamiento.
"""

while True:
    mensaje_usuario = input("Tu: ")

    if mensaje_usuario.lower() == "salir":
        print("Agente: Hasta luego")
        break

    mensajes = [
        {"role": "system", "content": instrucciones}
    ]

    mensajes.extend(historial)
    mensajes.append({"role": "user", "content": mensaje_usuario})

    respuesta = cliente.chat.completions.create(
        model=MODELO,
        messages=mensajes,
        temperature=0.4
    )

    texto_respuesta = respuesta.choices[0].message.content

    print(f"Agente: {texto_respuesta}")

    historial.append({"role": "user", "content": mensaje_usuario})
    historial.append({"role": "assistant", "content": texto_respuesta})
```

## Partes importantes del codigo

### `GROQ_API_KEY`

```python
api_key = os.getenv("GROQ_API_KEY")
```

Esta linea busca la clave en las variables de entorno. Asi evitamos guardar claves privadas en archivos del proyecto.

### Cliente de Groq

```python
cliente = Groq(api_key=api_key)
```

El cliente es el objeto que permite comunicarse con la API.

### Mensaje de sistema

```python
{"role": "system", "content": instrucciones}
```

El mensaje de sistema define como debe comportarse el agente.

### Historial

```python
historial.append({"role": "user", "content": mensaje_usuario})
historial.append({"role": "assistant", "content": texto_respuesta})
```

El historial permite que el agente recuerde lo que se hablo antes mientras el programa sigue abierto.

## Agente con una herramienta simple

Un agente tambien puede apoyarse en funciones de Python.

Por ejemplo, podemos crear una funcion que recomiende una practica segun el tema:

```python
def recomendar_practica(tema):
    practicas = {
        "listas": "Crea una lista de compras y permite agregar productos.",
        "bucles": "Muestra la tabla de multiplicar de un numero.",
        "funciones": "Crea funciones para sumar, restar, multiplicar y dividir."
    }

    return practicas.get(tema, "Crea un ejercicio pequeno usando variables, input y print.")
```

Luego el programa puede usar esa funcion para sumar contexto antes de consultar al modelo.

La idea importante es que el modelo no reemplaza todo el programa. Python sigue controlando datos, reglas, archivos y funciones. El modelo ayuda a interpretar y generar texto.

## Ejercicio

Crea un archivo llamado `agente_tutor.py`.

Debe:

1. Pedir una pregunta al usuario.
2. Enviar la pregunta a Groq.
3. Responder como tutor de Python.
4. Repetir hasta que el usuario escriba `salir`.
5. Mantener historial durante la conversacion.

## Desafio

Mejora el agente para que pueda:

- Recomendar una practica segun el tema elegido.
- Explicar errores comunes de Python.
- Dar pistas antes de mostrar una solucion completa.
- Guardar la conversacion en un archivo `.txt`.

## Ideas de agentes simples

- Agente tutor de Python.
- Agente corrector de ejercicios.
- Agente generador de practicas.
- Agente que explica errores.
- Agente que ayuda a mejorar nombres de variables.
- Agente que convierte un problema escrito en pasos de solucion.
