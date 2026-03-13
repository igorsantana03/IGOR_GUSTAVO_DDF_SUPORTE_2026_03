
#  Estrutura do repositório
``
igor_santana_DDF_SUPORTE_2026_03

README.md
prints/
    ping.png
    tracert.png
    nslookup.png
    banco.png
    vpn.png
    pipeline.png

# Desafio Técnico – Dadosfera Suporte

## Candidato

Igor Gustavo Santana

## Repositório

# Step 1 – Troubleshooting

### Chamado do cliente

Cliente relatou erro durante a importação de dados de uma planilha do Google Sheets para a plataforma.

### Diagnóstico

Ao analisar o pipeline de coleta foi identificado que o erro pode ocorrer por:

* Permissão incorreta da planilha
* Tipos de dados inconsistentes
* Linhas vazias ou cabeçalhos duplicados
* Limite de requisições da API do Google

### Sugestão de correção no Dataset

Alterar a configuração do dataset para:

* Garantir que a planilha esteja com acesso **compartilhado ou público**
* Garantir que a **primeira linha contenha apenas os nomes das colunas**
* Remover linhas vazias
* Padronizar tipos de dados (ex: texto ou número)

### Boas práticas ao carregar Google Sheets

1. Validar estrutura da planilha
2. Evitar células mescladas
3. Garantir que os dados estejam normalizados
4. Monitorar logs do pipeline

### Coleta de logs

Os logs podem ser obtidos pelo painel da plataforma seguindo a documentação oficial da Dadosfera.

---

# Step 2 – Criação de Banco de Dados

Foi criada uma máquina virtual Linux para hospedar o banco de dados.

Sistema operacional utilizado:

Ubuntu 22.04

Banco instalado:

PostgreSQL

### Criação do banco

```sql
CREATE DATABASE igor_suporte;
```

### Criação da tabela

Utilizando os dados da tabela fornecida pela empresa.

```sql
CREATE TABLE TB_igor_suporte (
id INT,
nome VARCHAR(100),
email VARCHAR(100),
telefone VARCHAR(20)
);
```

### Inserção de dados

```sql
INSERT INTO TB_igor_suporte VALUES
(1,'Ana','ana@email.com','119999999'),
(2,'Carlos','carlos@email.com','119888888');
```

---

# Step 3 – Configuração da VPN

Para permitir comunicação segura foi utilizada a VPN.

Ferramenta utilizada:

OpenVPN

### Instalação

```bash
sudo apt update
sudo apt install openvpn
```

### Conexão

```bash
sudo openvpn --config cliente.ovpn
```

Após a conexão foi possível acessar a rede privada da plataforma.

---

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

Ferramentas como ChatGPT podem auxiliar na triagem inicial de chamados.

-

