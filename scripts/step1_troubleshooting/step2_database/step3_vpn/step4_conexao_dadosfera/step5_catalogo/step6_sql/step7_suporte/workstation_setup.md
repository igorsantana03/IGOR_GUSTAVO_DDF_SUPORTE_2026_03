# Setup da estação de trabalho

## Sistema operacional recomendado

Linux Ubuntu 22.04 LTS

## Ferramentas necessárias

Python 3.10  
Git  
OpenVPN  
Terminal

## Configuração inicial

Instalar ferramentas necessárias:

sudo apt update
sudo apt install git python3 python3-pip openvpn postgresql-client

## Checklist de validação

Testar conectividade

ping servidor

Testar resolução DNS

nslookup servidor

Testar rota

traceroute servidor

Testar porta do banco

nc -zv host 5432

Se todos os testes forem bem sucedidos, a estação está pronta para operar.
