#!/bin/bash
# Atualizar pacotes do sistema
sudo apt update && sudo apt upgrade -y

# Instalar OpenVPN
sudo apt install openvpn -y

# Conectar à VPN usando arquivo .ovpn
# Substitua CAMINHO/ARQUIVO.ovpn pelo caminho real
sudo openvpn --config CAMINHO/ARQUIVO.ovpn
