$packageName = "{{PackageName}}"
$fileType = "exe"
$silentArgs = "/VERYSILENT /SP- /NORESTART"
$url = 'http://colocrossing.dl.sourceforge.net/project/winmerge/stable/{{PackageVersion}}/WinMerge-{{PackageVersion}}-Setup.exe' # download url
Install-ChocolateyPackage $packageName $fileType $silentArgs $url