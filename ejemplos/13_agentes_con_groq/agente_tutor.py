import os

from groq import Groq


MODELO = "llama-3.3-70b-versatile"


def crear_cliente():
    api_key = os.getenv("GROQ_API_KEY")

    if api_key is None:
        print("Falta configurar GROQ_API_KEY")
        print("Ejemplo macOS/Linux: export GROQ_API_KEY=\"tu_api_key\"")
        print("Ejemplo Windows PowerShell: $env:GROQ_API_KEY=\"tu_api_key\"")
        raise SystemExit

    return Groq(api_key=api_key)


def pedir_respuesta(cliente, historial, mensaje_usuario):
    instrucciones = """
Eres un tutor de Python para estudiantes principiantes.
Responde en espanol claro.
Usa ejemplos cortos.
Si el estudiante pide una solucion, explica tambien el razonamiento.
"""

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

    return respuesta.choices[0].message.content


def main():
    cliente = crear_cliente()
    historial = []

    print("Agente tutor de Python")
    print("Escribe salir para terminar")

    while True:
        mensaje_usuario = input("Tu: ")

        if mensaje_usuario.lower() == "salir":
            print("Agente: Hasta luego")
            break

        texto_respuesta = pedir_respuesta(cliente, historial, mensaje_usuario)
        print(f"Agente: {texto_respuesta}")

        historial.append({"role": "user", "content": mensaje_usuario})
        historial.append({"role": "assistant", "content": texto_respuesta})


main()
