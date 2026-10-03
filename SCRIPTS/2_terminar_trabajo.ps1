<#
.SYNOPSIS
Sincroniza los archivos desde el entorno local hacia el NAS.
Solo copia archivos nuevos o versiones más recientes.
#>

$origen = "C:\Antigravity_Projects\TFG"
$destino = "\\GEN7NAS\Disco 1\TFG\UNED"

Write-Host "Iniciando subida de cambios al NAS..." -ForegroundColor Cyan
# /E: Copia subdirectorios
# /XO: Excluye archivos más antiguos
# /FFT: Asume tiempos de archivo FAT (resolución de 2 segundos)
# /Z: Modo reiniciable
# /NP: Sin progreso
# /XD: Excluye carpetas ocultas o de Git que no necesitan estar en el NAS
robocopy $origen $destino /E /XO /FFT /Z /NP /XD ".git" ".agents"

Write-Host "Sincronización completada." -ForegroundColor Green
