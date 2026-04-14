$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'godwit-sync'
    url64bit       = 'https://downloads.godwit.io/godwit-sync/v0.3.1/godwit-sync_0.3.1_windows_amd64.zip'
    checksum64     = '1ac3e49f7fda5ba8288f59065497bec1f98f2d7e5c7917faf42e8ab45a7a376e'
    checksumType64 = 'sha256'
    unzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
