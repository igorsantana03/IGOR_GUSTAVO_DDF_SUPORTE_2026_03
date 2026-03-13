# Conexão com a plataforma Dadosfera

Após estabelecer a conexão VPN, foi realizada a conexão da base PostgreSQL com a plataforma Dadosfera.

## Configuração da fonte de dados

Tipo de conexão: PostgreSQL

Host: IP do servidor  
Porta: 5432  
Database: igor_suporte  

## Pipeline criado

Source: PostgreSQL  
Tabela: TB_igor_suporte  
Destino: Plataforma Dadosfera

Após a configuração, o pipeline foi executado com sucesso e os dados foram disponibilizados na plataforma.
