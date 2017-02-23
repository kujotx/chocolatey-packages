$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.2.4.exe'
$checksum32  = '2c36978d0367aac1881d68ede14dcbd8003b78a45a30a30dc5086bf7ccc64d48'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.2.4.exe'
$checksum64  = '0dabf7f5cba2101ef9303a50c81ef9eb9d59738ff62b4f4c5bba5a15ca4671f8'

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

