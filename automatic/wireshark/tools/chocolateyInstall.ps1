$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.4.0.exe'
$checksum32  = '971e6021d6ba214aa938ff43436b70525efc8f5286e556066dfa4863603e7c5e'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.4.0.exe'
$checksum64  = '341f97b1d8fc25b4e149fb20b718451aa8646856faa0576071037e60ed47f8b0'

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

