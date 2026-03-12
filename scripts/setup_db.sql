-- Script de configuração de Banco de Dados para o Case Dadosfera
-- Candidato: Igor Gustavo Santana

-- 1. Criação do Banco de Dados
CREATE DATABASE igor_gustavo_vaga;

-- 2. Conexão ao banco
\c igor_gustavo_vaga;

-- 3. Criação da Tabela principal de suporte
CREATE TABLE TB_igor_gustavo_vaga (
    id SERIAL PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    data_atendimento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    categoria_problema VARCHAR(50),
    status_chamado VARCHAR(20) CHECK (status_chamado IN ('Aberto', 'Em Análise', 'Resolvido')),
    prioridade INTEGER CHECK (prioridade BETWEEN 1 AND 5),
    descricao_erro TEXT
);

-- 4. Inserção de dados para teste (Step 2)
INSERT INTO TB_igor_gustavo_vaga (nome_cliente, categoria_problema, status_chamado, prioridade, descricao_erro)
VALUES 
('Empresa Alpha', 'Conexão API', 'Resolvido', 1, 'Erro de autenticação no endpoint /v1/data'),
('Logística Beta', 'Pipeline de Dados', 'Aberto', 2, 'Timeout durante a carga de arquivos CSV'),
('Varejo Gamma', 'Visualização', 'Em Análise', 3, 'Gráfico de dispersão não carrega no módulo de BI');

-- 5. Query de exemplo (Step 6)
SELECT categoria_problema, COUNT(*) as total_chamados 
FROM TB_igor_gustavo_vaga 
GROUP BY categoria_problema;
