$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'godwit-sync'
    url64bit       = 'https://downloads.godwit.io/godwit-sync/v0.3.2/godwit-sync_0.3.2_windows_amd64.zip'
    checksum64     = '37e6c6574940c398b96f18fbc9964bddc0ec3105863a6d5756bc65f9b7307714'
    checksumType64 = 'sha256'
    unzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
