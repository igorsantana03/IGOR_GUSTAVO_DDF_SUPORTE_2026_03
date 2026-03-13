SELECT COUNT(*) AS total_registros
FROM TB_igor_suporte;

SELECT AVG(idade) AS idade_media
FROM TB_igor_suporte;

SELECT nome, idade
FROM TB_igor_suporte
ORDER BY idade DESC;

SELECT nome, data_cadastro
FROM TB_igor_suporte
ORDER BY data_cadastro DESC;
