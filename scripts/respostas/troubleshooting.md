# Resolução Step 1 - Troubleshooting (Atendimento ao Cliente)

## Cenário
O cliente reportou um erro na importação de dados provenientes de um Google Sheets para a plataforma Dadosfera.

## Diagnóstico e Sugestão de Resposta
Como Analista de Suporte, a interação com o cliente deve ser clara e técnica. Abaixo, a sugestão de resposta para o chamado:

> "Olá! Verificamos o erro no seu pipeline de coleta. Para resolvermos, sugerimos as seguintes ações:
> 
> 1. **Permissões:** Certifique-se de que a planilha do Google Sheets está compartilhada com o e-mail de serviço da Dadosfera ou configurada como 'Qualquer pessoa com o link pode ler'.
> 2. **Formatação do Dataset:** Verifique se a primeira linha contém apenas os nomes das colunas e se não há células mescladas ou colunas vazias entre os dados.
> 3. **Logs de Erro:** Para um diagnóstico mais profundo, você pode acessar o ícone de histórico no pipeline e clicar em 'Baixar Logs'.
> 
> Se precisar de ajuda para interpretar os logs, estamos à disposição!"

## Cuidados Adicionais ao Carregar Google Sheets
* **Tipagem:** Garantir que colunas de data e valores numéricos estejam formatados corretamente no Sheets.
* **Volume:** Para planilhas muito grandes, verificar se o tempo de timeout da rede não está sendo excedido.
