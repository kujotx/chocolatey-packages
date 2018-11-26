$ErrorActionPreference = 'Stop'

$packageName = 'WinMerge'
$url32       = 'https://downloads.sourceforge.net/winmerge/WinMerge-2.16.0-Setup.exe'
$checksum32  = 'a820e09ef8374295849ec7cb3906fb9db10d1f223cde1579ba166fa3b8851639'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = $url32
  checksum               = $checksum32
  checksumType           = 'sha256'
  silentArgs             = '/VERYSILENT /SP- /NORESTART'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs
