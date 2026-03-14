#!/bin/bash
# Script de VPN – Simulação
echo "Atualizando pacotes..."
sudo apt update -y

echo "Instalando OpenVPN..."
sudo apt install openvpn -y

echo "Simulando conexão VPN..."
echo "Initialization Sequence Completed" > ~/vpn_files/logs_vpn.txt
echo "VPN conectada com sucesso (simulação)." >> ~/vpn_files/logs_vpn.txt

# Mostrar logs no terminal
cat ~/vpn_files/logs_vpn.txt
