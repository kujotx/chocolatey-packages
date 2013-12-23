function Get-Host( [System.String]$DownloadUrl){
	$uri = [System.Uri]$DownloadUrl
	return "$($uri.Scheme)://$($uri.Host)"
}

$packageName = "{{PackageName}}"
$fileType = "exe"
$silentArgs = "/S /quicklaunchicon=no"
$url = '{{DownloadUrl}}' # download url
$downloadUrl64 = '{{DownloadUrlx64}}' # 64bit URL here or just use the same as $url
$downloadhost = (Get-Host $url)
$url64 =  "$($downloadhost)$($downloadUrl64)"
Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64