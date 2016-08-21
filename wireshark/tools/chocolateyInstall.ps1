$packageName = "{{PackageName}}"
$fileType = "exe"
$silentArgs = "/S /quicklaunchicon=no"
# Official download primary and mirrors:
# https://www.wireshark.org/download
# https://1.na.dl.wireshark.org
# https://2.na.dl.wireshark.org
# https://1.eu.dl.wireshark.org
# https://1.as.dl.wireshark.org
$url =           'https://2.na.dl.wireshark.org/win32/all-versions/Wireshark-win32-{{PackageVersion}}.exe' # download url
$downloadUrl64 = 'https://2.na.dl.wireshark.org/win64/all-versions/Wireshark-win64-{{PackageVersion}}.exe' # 64bit URL here or just use the same as $url
Install-ChocolateyPackage $packageName $fileType $silentArgs $url $downloadUrl64
