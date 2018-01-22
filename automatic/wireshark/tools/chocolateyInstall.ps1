$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.4.4.exe'
$checksum32  = '1f93c1df271aeaa60161d67abd9e17f48f07f1a7cfc84c3c09076be23b2a845e'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.4.4.exe'
$checksum64  = 'f532b664921a317c151ef0fb2b4e7badcdb9ecd5a969d38bd54568a6a0a18c68'

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

