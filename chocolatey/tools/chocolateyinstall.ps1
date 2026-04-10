$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'godwit-sync'
    url64bit       = 'https://downloads.godwit.io/godwit-sync/v0.2.4/godwit-sync_0.2.4_windows_amd64.zip'
    checksum64     = '327cdb556d804ffdd27a467d01790bd2c908064641e678c93f0b347e4ec4c077'
    checksumType64 = 'sha256'
    unzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
