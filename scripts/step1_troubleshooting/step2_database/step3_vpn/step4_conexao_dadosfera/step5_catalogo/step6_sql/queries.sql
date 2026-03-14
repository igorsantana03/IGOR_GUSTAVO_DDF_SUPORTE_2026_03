-- Step 6 – Consultas SQL sobre TB_igor_santana

-- 1. Total de funcionários
SELECT COUNT(*) AS total_funcionarios
FROM TB_igor_santana;

-- 2. Média de idade
SELECT AVG(idade) AS idade_media
FROM TB_igor_santana;

-- 3. Funcionários por departamento
SELECT departamento, COUNT(*) AS qtd_funcionarios
FROM TB_igor_santana
GROUP BY departamento;

-- 4. Listagem completa da tabela
SELECT * FROM TB_igor_santana;
