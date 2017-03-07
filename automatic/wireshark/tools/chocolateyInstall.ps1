$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.2.5.exe'
$checksum32  = 'a99a8cc1df24b31ab9ad963c2d1133982e0e9f2b33e8bfab8ac313c16e432da3'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.2.5.exe'
$checksum64  = 'ab2723ba25dcf1e2f60faa579c1cad3e88ebcf53cf1a2a6897094b9f447fb864'

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

