$packageName = "wireshark"
$fileType = "exe"
$silentArgs = "/S /quicklaunchicon=no"
$url = "http://wiresharkdownloads.riverbed.com/wireshark/win32/Wireshark-win32-1.10.0.exe"
$url64bit = "http://wiresharkdownloads.riverbed.com/wireshark/win64/Wireshark-win64-1.10.0.exe"

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64bit