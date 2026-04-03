$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'godwit-sync'
    url64bit       = 'https://releases.godwit.io/godwit-sync/v0.2.3/godwit-sync_0.2.3_windows_amd64.zip'
    checksum64     = '9c049f0c59b1ecd0c235296ed1e77359c0c9bfacc00d5f4b27287fed21c54bde'
    checksumType64 = 'sha256'
    unzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
