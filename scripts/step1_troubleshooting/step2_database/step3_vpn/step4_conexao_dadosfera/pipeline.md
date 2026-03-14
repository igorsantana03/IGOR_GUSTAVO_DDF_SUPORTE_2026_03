# Script de conexão com a Dadosfera – Simulação

Write-Output "Conectando à tabela TB_igor_santana..."
Start-Sleep -Seconds 1

$connectionStatus = "Conexão com TB_igor_santana validada com sucesso"
Write-Output $connectionStatus

Write-Output "Executando pipeline..."
Start-Sleep -Seconds 1

$logPath = "C:\Users\igors\IGOR_GUSTAVO_DDF_SUPORTE_2026_03\scripts\pipeline\logs_pipeline.txt"
$connectionStatus | Out-File -FilePath $logPath
"Pipeline executada com sucesso" | Out-File -FilePath $logPath -Append

# Mostrar logs no terminal
Get-Content $logPath
Conexão com TB_igor_santana validada com sucesso
Pipeline executada com sucesso
