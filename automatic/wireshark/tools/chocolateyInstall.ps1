$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.4.6.exe'
$checksum32  = '6395ca0265207dcdcb1080073591968dec2711cbea27708efb83bbd6c3a32235'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.4.6.exe'
$checksum64  = '025c68ae6ac5a4ae146ba8318f596089859c9d5d890b688ed8c1498745779412'

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

