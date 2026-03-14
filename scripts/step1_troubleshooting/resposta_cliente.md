Olá Ana,

Recebemos seu chamado sobre erro na importação de dados no pipeline da Dadosfera. Identificamos que o problema está relacionado ao formato do Dataset carregado do Google Sheets.

**Sugestão de alteração no Dataset:**
- Remover células mescladas ou vazias.
- Garantir consistência de tipos nas colunas (datas, números, textos).
- Nomear colunas sem caracteres especiais (ex: 'nome_cliente', 'data_venda').
- Evitar linhas/colunas em branco no início do arquivo.

**Cuidados adicionais:**
- Verificar permissões de leitura do Google Sheets.
- Planilhas muito grandes devem ser divididas.
- Atualizações frequentes: usar ingestão incremental.
- Para logs: acessar pipeline > Logs > Download CSV (para analisar falhas).

Se o erro persistir, envie o log da importação para análise detalhada.

Atenciosamente,  
**Igor Gustavo**  
Analista de Suporte – Dadosfera
