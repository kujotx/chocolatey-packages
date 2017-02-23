$ErrorActionPreference = 'Stop'

$packageName = 'WinMerge'
$url32       = 'http://downloads.sourceforge.net/winmerge/WinMerge-2.14.0-Setup.exe'
$checksum32  = 'cec2226c9d5e2fefa1538fa318d4c210d6c9a8b4bd25c893c085377c1e3be58b'

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
