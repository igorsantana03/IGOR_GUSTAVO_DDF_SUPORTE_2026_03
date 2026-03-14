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

## **Step 3 – Configuração e Conexão de VPN**

### Objetivo
Configurar a conexão VPN na rede da VM/Linux para acessar o banco de dados interno e integrar com a Dadosfera.

### Scripts
Arquivo principal:  
```

scripts/vpn/config_vpn.sh

```

Conteúdo do script:
```bash
#!/bin/bash
# Atualiza pacotes
sudo apt update && sudo apt upgrade -y

# Instala OpenVPN
sudo apt install openvpn -y

# Conecta à VPN usando arquivo .ovpn (substitua pelo caminho correto)
sudo openvpn --config CAMINHO/ARQUIVO.ovpn
````

### Checklist de validação da VPN

Após conectar:

1. **Ping no host do banco de dados**

```bash
ping <IP_DO_BANCO>
```

2. **Teste de porta**

```bash
telnet <IP_DO_BANCO> 3306
```

3. **Rota e DNS**

```bash
traceroute <IP_DO_BANCO>
nslookup dadosfera.ai
```

4. **Salvar logs da conexão**

```bash
sudo openvpn --config CAMINHO/ARQUIVO.ovpn --log ../../docs/logs_vpn.txt
```

### Estrutura do repositório

```
IGOR_GUSTAVO_DDF_SUPORTE_2026_03/
├── scripts/
│   ├── criacao_banco.sql
│   └── vpn/
│       ├── config_vpn.sh
│       └── README.md
└── docs/
    └── logs_vpn.txt
```

``

# Step 4 – Conexão com a Dadosfera

Com a VPN ativa foi criada uma conexão entre o banco de dados e a plataforma.

Etapas realizadas:

1. Acesso ao painel de fontes de dados
2. Cadastro da fonte PostgreSQL
3. Inserção das credenciais do banco
4. Teste de conexão

Após validação foi criada uma **pipeline de ingestão de dados** consumindo a tabela:

```
TB_igor_suporte
```

---

# Step 5 – Catálogo de Dados

A tabela foi publicada no catálogo da plataforma.

Nome amigável

Tabela de clientes de suporte

Descrição

Tabela fictícia utilizada para demonstrar ingestão de dados e consultas analíticas na plataforma Dadosfera.

---

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

