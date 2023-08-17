#!/bin/bash

# Función para cambiar la dirección MAC
change_mac() {
    echo -e "\e[1;36m Apagando interfaz $1 \e[0m"
    sudo ifconfig "$1" down
    sudo macchanger -r "$1"
    sudo ifconfig "$1" up
}

# Obtener información inicial de la interfaz
echo -e "\e[1;33mInformación de la interfaz actual:\e[0m"
ip a

# Pedir la interfaz al usuario
echo -e "\e[1;33m###############              ###################\e[0m"
read -p "Ingresa el nombre de la interfaz (por ej. wlan0): " interfaz

# Obtener la información actual de la interfaz
ip_info=$(ip a show dev "$interfaz")
old_mac=$(echo "$ip_info" | grep link/ether | awk '{print $2}')
old_ip=$(echo "$ip_info" | grep "inet " | awk '{print $2}')

# Cambiar la dirección MAC
echo -e "\e[1;34m####### Cambiando la dirección MAC ##########\e[0m"
change_mac "$interfaz"

# Obtener la nueva información de la interfaz
ip_info_new=$(ip a show dev "$interfaz")
new_mac=$(echo "$ip_info_new" | grep link/ether | awk '{print $2}')

# Mostrar información
echo -e "\n\e[1;33mInformación antes del cambio:\e[0m"
echo "MAC Antigua: $old_mac"
echo "IP Antigua: $old_ip"
echo -e "\e[1;34m####### MAC NUEVA ##########\e[0m"
echo -e "\e[1;31mMAC Nueva: $new_mac\e[0m"
echo -e "\n\e[1;34mInformación despues del cambio:\e[0m"
echo -e "\e[1;33m###############              ###################\e[0m"
ifconfig
# Pausa para esperar a que el usuario presione una tecla
echo -e "\e[1;33m###############     Ing. Franck Tscherig         ######## 1v3 ##########\e[0m"
read -n 1 -s -r -p "Presiona cualquier tecla para salir..."



