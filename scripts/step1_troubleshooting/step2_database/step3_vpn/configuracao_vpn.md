# VPN OpenVPN – Dadosfera

## Objetivo
Configurar VPN para acessar rede privada do cliente e integrar com Dadosfera.

## Passos
1. Colocar arquivo .ovpn na VM.
2. Executar script `config_vpn.sh` com sudo.
3. Validar conexão usando ping, telnet, traceroute e nslookup.
4. Salvar logs em `docs/logs_vpn.txt`.

## Observações
- Permissões corretas do arquivo .ovpn são essenciais.
- Testar conectividade antes de criar pipelines na Dadosfera.
