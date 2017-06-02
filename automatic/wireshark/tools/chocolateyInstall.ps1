$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.2.7.exe'
$checksum32  = '6f5ef2ed9aed62f3613f66b960f50663cfb4ec4b59c9fe1fa11ff08137c8a0c0'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.2.7.exe'
$checksum64  = 'cc8e6feff1e72d1baaafb277e33c9137a76a5edeca629fe4c764070a0719df50'

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

