$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://www.wireshark.org/download/win32/all-versions/Wireshark-win32-2.6.3.exe'
$checksum32  = '3b1519d04d982220941a9fff03af74110b68fbe7f1cedd79ad3f097593c5f456'
$url64	     = 'https://www.wireshark.org/download/win64/all-versions/Wireshark-win64-2.6.3.exe'
$checksum64  = '40701d569f75ba08bd3fb9d79e6841095d6d3001e5d8f1e9f50c996bcf0657ff'

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

