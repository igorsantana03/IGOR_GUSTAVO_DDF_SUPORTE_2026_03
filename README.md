# IGOR_GUSTAVO_DDF_SUPORTE_2026_03

Repositório de entrega do Case Técnico – Analista de Suporte Dadosfera  
Inclui Steps 2 e 3: criação de banco/tabela e configuração de VPN.

---

## **Step 2 – Criação do Banco de Dados**

### Objetivo
Criar uma base de dados relacional interna para testes e integração com a plataforma Dadosfera.

### Scripts
Todos os comandos SQL estão no arquivo:  
```

scripts/criacao_banco.sql

```

### Comandos incluídos
- Criar banco de dados: `igor_gustavo_vaga`
- Criar tabela fictícia: `TB_igor_gustavo_vaga` com os campos:
  - `id` (INT, chave primária)
  - `nome_cliente` (VARCHAR)
  - `data_venda` (DATE)
  - `produto` (VARCHAR)
  - `quantidade` (INT)
  - `valor_total` (DECIMAL)
- Inserir dados de teste
- Validar tabela com `SELECT * FROM TB_igor_gustavo_vaga;`

### Estrutura do repositório
```

IGOR_GUSTAVO_DDF_SUPORTE_2026_03/
└── scripts/
└── criacao_banco.sql

```

---

# Step 3 – Configuração e Conexão de VPN (Simulada)

Este passo simula a configuração e conexão de uma VPN na estação de trabalho do usuário, sem a necessidade de ter o arquivo `.ovpn` real.  

O objetivo é gerar **logs de conexão** e demonstrar que a lógica do Step 3 está funcionando, mesmo sem acesso direto à VPN da Dadosfera.

---

## Estrutura de arquivos
vpn/
├── config_vpn.ps1 # Script de simulação da VPN
├── logs_vpn.txt # Logs gerados pela execução do script
└── README.md # Este arquivo

---

## Conteúdo do script `config_vpn.ps1`

O script realiza os seguintes passos:

1. Atualiza pacotes (simulado)
2. Instala o OpenVPN (simulado)
3. Simula a conexão VPN, gerando logs no arquivo `logs_vpn.txt`
4. Mostra os logs no terminal

**Trecho do script:**

``powershell
Write-Output "Atualizando pacotes... (simulação)"
Start-Sleep -Seconds 1

Write-Output "Instalando OpenVPN... (simulação)"
Start-Sleep -Seconds 1

Write-Output "Simulando conexão VPN..."
$logPath = "C:\Users\igors\IGOR_GUSTAVO_DDF_SUPORTE_2026_03\scripts\vpn\logs_vpn.txt"
"Initialization Sequence Completed" | Out-File -FilePath $logPath
"VPN conectada com sucesso (simulação)." | Out-File -FilePath $logPath -Append

# Mostrar logs no terminal
Get-Content $logPath
Como executar

Abra o PowerShell.

Navegue até a pasta do script:

cd C:\Users\igors\IGOR_GUSTAVO_DDF_SUPORTE_2026_03\scripts\vpn

Execute o script:

.\config_vpn.ps1

Saída esperada no terminal:

Atualizando pacotes... (simulação)
Instalando OpenVPN... (simulação)
Simulando conexão VPN...
Initialization Sequence Completed
VPN conectada com sucesso (simulação).

O arquivo logs_vpn.txt conterá:

Initialization Sequence Completed
VPN conectada com sucesso (simulação).

# Step 4 – Conexão com a Dadosfera (Simulada)

Este passo simula a conexão da tabela `TB_igor_santana` com a plataforma Dadosfera e a execução de uma pipeline.  
Permite gerar evidências mesmo sem a VPN real.

---

## Estrutura de arquivos
pipeline/
├── conexao_dadosfera.ps1 # Script simulado da pipeline
├── logs_pipeline.txt # Logs gerados pela execução do script
└── README.md # Explicação do Step 4
---

## Como executar

1. Abra o **PowerShell**.
2. Navegue até a pasta `pipeline`:

``powershell
cd C:\Users\igors\IGOR_GUSTAVO_DDF_SUPORTE_2026_03\scripts\pipeline
Execute o script:

.\conexao_dadosfera.ps1
Saída esperada
Conectando à tabela TB_igor_santana...
Conexão com TB_igor_santana validada com sucesso
Executando pipeline...
Conexão com TB_igor_santana validada com sucesso
Pipeline executada com sucesso
Logs gerados

O arquivo logs_pipeline.txt conterá:

Conexão com TB_igor_santana validada com sucesso
Pipeline executada com sucesso.

# Step 5 – Catálogo de Dados (Simulado)

Este step simula a disponibilização da tabela `TB_igor_santana` no Catálogo da Dadosfera e a documentação da mesma.

## Objetivos

- Disponibilizar a tabela para consulta.
- Documentar com:
  - Nome amigável
  - Descrição

## Estrutura de arquivos
catalogo/
├── catalogo_tb.ps1 # Script de simulação
├── logs_catalogo.txt # Logs gerados
└── README.md # Explicação do Step 5


## Como executar

1. Abra o **PowerShell**.
2. Navegue até a pasta `catalogo`:

``powershell
cd C:\Users\igors\IGOR_GUSTAVO_DDF_SUPORTE_2026_03\scripts\catalogo

Execute o script:

.\catalogo_tb.ps1
Saída esperada
Disponibilizando TB_igor_santana no Catálogo...
Nome da tabela: TB_igor_santana
Nome amigável: Tabela de Funcionários - Suporte
Descrição: Tabela simulada contendo dados fictícios da equipe de suporte da Dadosfera.
Status: Disponibilizada com sucesso no Catálogo (simulação).

# Step 6 – Consultas SQL

Consulta realizada para análise descritiva.

`sql
SELECT
COUNT(*) as total_registros
FROM TB_igor_suporte;
``

Resultado

Quantidade total de registros inseridos na tabela.

Outra consulta utilizada:

`sql
SELECT
nome,
email
FROM TB_igor_suporte;
``

Essas consultas foram executadas no módulo de visualização da plataforma.

---

# Step 7 – Suporte híbrido / presencial

## Setup inicial da estação

Sistema operacional recomendado

Linux Ubuntu ou Windows 11.

Ferramentas necessárias

* Python
* Cliente SQL
* OpenVPN
* Utilitários de rede

### Checklist de validação

# Step 8 - Verificar conectividade

``
ping servidor
```

Verificar rota de rede

```
tracert servidor
```

Verificar DNS

```
nslookup servidor
```

Testar portas

```
telnet host porta
```

--

## Diagnóstico de performance

Para investigar lentidão em consultas são avaliados:

### Banda de rede

Verificar velocidade da conexão.

### Latência

Comando:

``
ping
`

### Rota

Comando:

`
tracert
`

### DNS

Comando:

`
nslookup
``

### Possíveis gargalos

* Switch
* Firewall
* Proxy
* Roteador

### Plano de ação

1. Identificar sintomas
2. Coletar logs
3. Executar testes de rede
4. Validar latência
5. Verificar gargalos
6. Propor solução

---

# Evidências

## Teste de Ping

![Ping](Imagem_ping.png)

---

## Teste de Tracert

![Tracert](Imagem_tracert.png)

---

## Teste de Nslookup

![Nslookup](Imagem_nslookup.png)

---

## Teste banco de dados
![Teste1] (imagem_banco_de_dados1.png)
![Teste2] (imagem_banco_de_dados2.png)
![Teste3] (imagem_banco_de_dados3.png)

# Vídeo de demonstração

Link do vídeo demonstrando a execução do ambiente e troubleshooting:

((https://drive.google.com/file/d/1YZ0VDNUkzx7X8CGUtYGhqva0mKtiS0wS/view?usp=drive_link))

--

# BONUS – Boas práticas de suporte

Uma integração com um chatbot baseado em IA poderia melhorar o atendimento ao cliente.

Exemplo de fluxo

Usuário → Chatbot → Base de conhecimento → Suporte humano.


-

