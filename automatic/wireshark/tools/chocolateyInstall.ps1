$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.2.6.exe'
$checksum32  = 'd43a3194d4cb6899bda39fb24e43bbfd8497d6c2794658f69955b7d6a111a796'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.2.6.exe'
$checksum64  = 'faa10fe979440aa231478b8ad35ae5810020f814438e735e6edd57611465c405'

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

