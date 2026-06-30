import os

from groq import Groq


MODELO = "llama-3.3-70b-versatile"


def recomendar_practica(tema):
    practicas = {
        "variables": "Crea un programa que guarde nombre, edad y ciudad, y luego muestre una presentacion.",
        "condicionales": "Pide una nota y muestra si esta aprobada, desaprobada o si es excelente.",
        "bucles": "Pide un numero y muestra su tabla de multiplicar del 1 al 10.",
        "listas": "Crea una lista de compras, permite agregar productos y muestra el listado final.",
        "funciones": "Crea funciones para sumar, restar, multiplicar y dividir dos numeros.",
        "archivos": "Pide una frase del dia, guardala en un archivo y luego muestra el contenido."
    }

    return practicas.get(
        tema.lower(),
        "Crea un programa pequeno usando input, variables, condicionales y print."
    )


def crear_cliente():
    api_key = os.getenv("GROQ_API_KEY")

    if api_key is None:
        print("Falta configurar GROQ_API_KEY")
        raise SystemExit

    return Groq(api_key=api_key)


def responder_con_practica(cliente, tema):
    practica = recomendar_practica(tema)

    mensajes = [
        {
            "role": "system",
            "content": "Eres un tutor de Python. Explica consignas de practica para principiantes."
        },
        {
            "role": "user",
            "content": f"Tema: {tema}\nPractica sugerida: {practica}\nExplica la consigna y da una pista breve."
        }
    ]

    respuesta = cliente.chat.completions.create(
        model=MODELO,
        messages=mensajes,
        temperature=0.4
    )

    return respuesta.choices[0].message.content


def main():
    cliente = crear_cliente()

    print("Generador de practicas con Groq")
    tema = input("Tema: ")

    respuesta = responder_con_practica(cliente, tema)
    print(respuesta)


main()
