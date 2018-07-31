$ErrorActionPreference = 'Stop'

$packageName = 'ClipX'
$url32       = 'http://bluemars.org/clipx/clipx-1.0.3.8-setup.exe'
$checksum32  = '28a6111c5bc3257087420a623ed286a765dc88b7eefd4685c5dd4d6787b4cd1b'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = $url32
  checksum               = $checksum32
  checksumType           = 'sha256'
  silentArgs             = '/S'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs
