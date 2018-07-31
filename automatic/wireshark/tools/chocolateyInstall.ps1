$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://www.wireshark.org/download/win32/all-versions/Wireshark-win32-2.6.2.exe'
$checksum32  = '3d886e435570b7326f53d00996040ef65b9e2a5bffe48645ce29ea5a23930801'
$url64	     = 'https://www.wireshark.org/download/win64/all-versions/Wireshark-win64-2.6.2.exe'
$checksum64  = '88aa2ca018090fc73ffb273aa1ba9f690ec06deb77d1ec7ff9b39fe646ca2877'

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

