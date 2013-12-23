$packageName = "{{PackageName}}"
$fileType = "exe"
$silentArgs = "/S"
$url = '{{DownloadUrl}}' # download url
$url64 = '{{DownloadUrlx64}}' # 64bit URL here or just use the same as $url

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64bit