$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'godwit-sync'
    url64bit       = 'https://downloads.godwit.io/godwit-sync/v0.4.1/godwit-sync_0.4.1_windows_amd64.zip'
    checksum64     = 'df86dc0bead18839a048c77725ae2f760173210752168706f582ab4d28935a5d'
    checksumType64 = 'sha256'
    unzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
