-- Conectar no MySQL
-- sudo mysql -u root -p

-- Criar banco
CREATE DATABASE igor_gustavo_vaga;

-- Usar banco
USE igor_gustavo_vaga;

-- Criar tabela fictícia
CREATE TABLE TB_igor_gustavo_vaga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100),
    data_venda DATE,
    produto VARCHAR(50),
    quantidade INT,
    valor_total DECIMAL(10,2)
);

-- Inserir dados de teste
INSERT INTO TB_igor_gustavo_vaga (nome_cliente, data_venda, produto, quantidade, valor_total)
VALUES 
('João Silva', '2026-03-01', 'Caneta', 10, 50.00),
('Maria Santos', '2026-03-05', 'Caderno', 5, 75.50);

-- Validar tabela
SELECT * FROM TB_igor_gustavo_vaga;
