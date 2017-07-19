$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.2.8.exe'
$checksum32  = '7bfd50b9bbeeba6cc55c8f660e9e44c643791ee306227584299b560843f1564c'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.2.8.exe'
$checksum64  = 'caa8e6b1a69964594cfc5d4ebd16255a8ba80f54044c0d9c9352a798bde2bc89'

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

