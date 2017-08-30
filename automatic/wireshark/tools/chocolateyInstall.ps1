$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'
$url32       = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.4.1.exe'
$checksum32  = '8a2be35c125010538692130af6fc4f9384e3a3caa4f49eec7fc17e238512c067'
$url64	     = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.4.1.exe'
$checksum64  = 'c97d6a43bca6e706975b45bfa99d320674003673f8bc8337954694ef14e6cc26'

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

