param($u='all', $pano='off', $path='C:\Program Files (x86)\Steam')

if(Test-Path -Path $path){
	if($u -eq 'all'){
		Get-ChildItem -Path "$path\userdata" | 
		Foreach-Object{
			if(Test-Path -Path "$path\userdata\$_\730\local\cfg"){
				Copy-Item -Filter *.cfg -Path '.\cfg\*' -Recurse -Destination "$path\userdata\$_\730\local\cfg"
			}
		}			
	}
	else{
		Copy-Item -Filter *.cfg -Path '.\cfg\*' -Recurse -Destination "$path\userdata\$u\730\local\cfg"
	}
}
else{
	Write-Error 'Steam installation not found in default directory'
}

if($pano -eq 'on'){
	if(Test-Path -Path "$path\steamapps\common\Counter-Strike Global Offensive\csgo"){
		Copy-Item -Filter *.webm -Path '.\pano\*' -Recurse -Destination "$path\steamapps\common\Counter-Strike Global Offensive\csgo\panorama\videos\ancient.webm"
	}
	else{
		Write-Error 'CSGO installation not found in default directory'
	}
}
