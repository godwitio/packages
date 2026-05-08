$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'godwit-sync'
    url64bit       = 'https://downloads.godwit.io/godwit-sync/v0.3.3/godwit-sync_0.3.3_windows_amd64.zip'
    checksum64     = '754ecba4f9908fd607960274af60f3bf528d6a80b3d28120b7a7f8cc6e913365'
    checksumType64 = 'sha256'
    unzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
