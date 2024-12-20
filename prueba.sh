#!/bin/bash

# Función para generar un número aleatorio entre 0 y 5
random_number=$(( RANDOM % 6 ))
intentos=0

echo "¡Bienvenido al juego de adivinar el número!"
echo "He pensado en un número entre 0 y 5."

while true; do
    read -p "Ingresa un numero: " jugador
    
    # Verificar si la entrada es un número
    if [[ ! $jugador =~ ^[0-9]+$ ]]; then
        echo "Por favor, ingresa un numero valido."
        continue
    fi
    
    # Incrementar intentos
    ((intentos++))
    
    # Comparar números
    if [ $jugador -eq $random_number ]; then
        echo "Felicidades adivinaste el numero en $intentos intentos!"
        break
    elif [ $jugador -gt $random_number ]; then
        echo "Incorrecto el numero es menor. intenta de nuevo"
    else
        echo "Incorrecto el numero es mayor. Intenta de nuevo"
    fi
done
