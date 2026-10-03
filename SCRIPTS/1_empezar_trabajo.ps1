<#
.SYNOPSIS
Sincroniza los archivos desde el NAS hacia el entorno local.
Solo copia archivos nuevos o versiones más recientes.
#>

$origen = "\\GEN7NAS\Disco 1\TFG"
$destino = "C:\Antigravity_Projects\TFG"

Write-Host "Iniciando descarga desde el NAS..." -ForegroundColor Cyan
# /E: Copia subdirectorios
# /XO: Excluye archivos más antiguos
# /FFT: Asume tiempos de archivo FAT (resolución de 2 segundos)
# /Z: Modo reiniciable
# /NP: Sin progreso (reduce el ruido en pantalla)
robocopy $origen $destino /E /XO /FFT /Z /NP

Write-Host "Sincronización completada." -ForegroundColor Green
