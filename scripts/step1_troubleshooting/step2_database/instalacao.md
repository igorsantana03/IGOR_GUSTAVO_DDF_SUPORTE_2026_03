# Configuração do Banco de Dados

## Ambiente

Sistema operacional utilizado:

Ubuntu 22.04 LTS

## Instalação do PostgreSQL

Comandos executados:

sudo apt update
sudo apt install postgresql postgresql-contrib

## Criação do banco de dados

CREATE DATABASE igor_suporte;

## Criação da tabela

CREATE TABLE TB_igor_suporte (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade INT,
    data_cadastro TIMESTAMP
);

## Inserção de dados fictícios

INSERT INTO TB_igor_suporte (nome, email, idade, data_cadastro)
VALUES
('Ana Silva','ana@email.com',28,NOW()),
('Carlos Souza','carlos@email.com',34,NOW()),
('Juliana Lima','juliana@email.com',25,NOW());
