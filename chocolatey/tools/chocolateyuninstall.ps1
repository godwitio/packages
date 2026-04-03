$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$exePath  = Join-Path $toolsDir 'godwit.exe'

if (Test-Path $exePath) {
    Remove-Item $exePath -Force
    Write-Host "Removed $exePath"
}
