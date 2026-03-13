# Diagnóstico de lentidão em queries

Para investigar problemas de performance em requisições ou consultas SQL, sigo os seguintes passos:

## 1. Teste de latência

ping servidor

## 2. Teste de rota

traceroute servidor

## 3. Verificação de DNS

nslookup servidor

## 4. Teste de porta

nc -zv servidor 5432

## 5. Análise de perda de pacote

ping -c 100 servidor

## Possíveis gargalos

- switches
- roteadores
- firewall
- proxy corporativo

## Estratégia de investigação

Hipótese → Teste → Evidência → Correção
