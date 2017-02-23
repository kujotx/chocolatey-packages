import-module au

$releases = 'https://wireshark.org/download.html'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $re64  = '(http[s]?|[s]?)(:\/\/)([^\s,]+)\/win64\/[Ww]ire[Ss]hark-win64-[\d\.]+\.exe$'
    $url64 = $download_page.links | ? href -match $re64 | select -First 1 -expand href
    
    $version = $url64 -split '-|.exe' | select -Last 1 -Skip 1
	
	$re32 = '(https)(:\/\/)([^\s,]+)\/win32\/[Ww]ire[Ss]hark-win32-[\d\.]+\.exe$'
	$url32 = $download_page.Links | ? href -match $re32 | select -First 1 -expand href

    return @{ URL32 = $url32; URL64 = $url64; Version = $version }
}

update
