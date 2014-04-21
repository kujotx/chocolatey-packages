$packageName = "{{PackageName}}"
$fileType = "exe"
$silentArgs = "/S /quicklaunchicon=no"
$url =           'http://wiresharkdownloads.riverbed.com/wireshark/win32/all-versions/Wireshark-win32-{{PackageVersion}}.exe' # download url
$downloadUrl64 = 'http://wiresharkdownloads.riverbed.com/wireshark/win64/all-versions/Wireshark-win64-{{PackageVersion}}.exe' # 64bit URL here or just use the same as $url
Install-ChocolateyPackage $packageName $fileType $silentArgs $url $downloadUrl64