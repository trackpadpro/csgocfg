param ($u='all', $pano='off')

if(Test-Path -Path 'C:\Program Files (x86)\Steam'){
	if($u -eq 'all'){
		Get-ChildItem -Path 'C:\Program Files (x86)\Steam\userdata' | 
		Foreach-Object{
			if(Test-Path -Path "C:\Program Files (x86)\Steam\userdata\$_\730\local\cfg"){
				Copy-Item -Filter *.cfg -Path '.\cfg\*' -Recurse -Destination "C:\Program Files (x86)\Steam\userdata\$_\730\local\cfg"
			}
		}			
	}
	else{
		Copy-Item -Filter *.cfg -Path '.\cfg\*' -Recurse -Destination "C:\Program Files (x86)\Steam\userdata\$u\730\local\cfg"
	}
}
else{
	Write-Error 'Steam installation not found in default directory'
}

if($pano -eq 'on'){
	if(Test-Path -Path 'C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo'){
		Copy-Item '.\pano\ancient.webm' -Destination 'C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\panorama\videos'
	}
	else{
		Write-Error 'CSGO installation not found in default directory'
	}
}
