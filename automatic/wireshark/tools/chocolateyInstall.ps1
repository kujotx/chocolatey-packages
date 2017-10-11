$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.4.2.exe'
$checksum32  = 'bcdf1cb77e7bf56b1f99b5d9abd9c555c89b4f32d2a865d5f13b3e43238bfdf8'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.4.2.exe'
$checksum64  = 'ef372d8c4e8873a75d2de4028cb4fc7e23db2913de47086e4046f338bbfc6ddc'

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

