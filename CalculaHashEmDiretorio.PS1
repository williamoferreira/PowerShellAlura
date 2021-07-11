param($diretorio)

# Para o debuuger funciona no linux eu precisei cirar um link simbólico powershell
# apontando para
#      /opt/microsoft/powershell/7/pwsh


$ErrorActionPreference = "Break"

. .\ShaFile.PS1

$arquivos = Get-ChildItem $diretorio -File

foreach ($item in $arquivos.FullName) {
    $hashItem = Get-FileSHA1($item) 
    Write-Host "O hash do arquivo $item eh $hashItem"
}
