# Configuração da VPN

Para acessar a infraestrutura do cliente foi necessário estabelecer conexão via VPN utilizando OpenVPN.

## Instalação

sudo apt install openvpn

## Execução da conexão

sudo openvpn --config arquivo.ovpn

## Verificação da conexão

ip a

ping endereço_do_servidor

Caso a conexão seja estabelecida corretamente, a interface tun0 aparecerá na lista de interfaces de rede.
