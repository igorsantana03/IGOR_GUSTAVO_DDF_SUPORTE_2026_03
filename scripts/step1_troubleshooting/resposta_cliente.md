# Troubleshooting – Pipeline de Importação

Olá,

Recebemos o seu chamado relacionado ao erro no pipeline de ingestão de dados proveniente do Google Sheets.

Após análise inicial, identificamos que o erro pode estar relacionado ao formato do dataset utilizado na importação.

## Possíveis causas

1. Colunas com nomes duplicados
2. Linhas vazias dentro da tabela
3. Tipos de dados inconsistentes
4. Uso de fórmulas no Google Sheets
5. Células mescladas

## Sugestão de alteração no dataset

Recomendamos que o dataset seja ajustado para garantir:

- primeira linha contendo apenas nomes das colunas
- dados tabulares sem células mescladas
- tipos de dados consistentes por coluna
- ausência de linhas vazias

## Coleta de logs

Para investigar o erro em mais detalhes, recomendamos baixar os logs do pipeline.

Passos:

1. Acessar o pipeline no painel da Dadosfera
2. Clicar na aba "Logs"
3. Baixar o log da execução com erro
4. Analisar mensagens relacionadas a parsing ou schema

## Boas práticas para ingestão de dados do Google Sheets

- evitar células mescladas
- evitar caracteres especiais nos nomes de colunas
- manter dados tabulares
- evitar fórmulas
- garantir permissões de acesso ao documento

Caso o erro persista, pedimos que envie os logs da execução para análise mais detalhada.

Atenciosamente  
Suporte Técnico Dadosfera
