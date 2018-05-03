$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.6.0.exe'
$checksum32  = 'd96e76ab9d5d94cb70cd7686ff0302d482a5be79ae8fc95934902de79b9be94b'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.6.0.exe'
$checksum64  = 'a5c276cd3b2b3023b597debdf292cccb7f7f64400cd40d2ef5dd139d18424936'

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url	                 = $url32
  checksum               = $checksum32
  checksumType           = 'sha256'
  url64                  = $url64
  checksum64             = $checksum64
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

