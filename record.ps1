param($u='213770434', $path='C:\Program Files (x86)\Steam', $cs2='on')

if($cs2 -eq 'on'){
	if(Test-Path -Path "$path\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\autoexec.cfg"){
		Copy-Item "$path\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\autoexec.cfg" -Destination '.\cfg\cs2'
	}
	else{
		Write-Error 'CS2 autoexec not found in default directory'
	}
}

$path="$path\userdata\$u\730\local\cfg"

if(Test-Path -Path $path){
	Get-ChildItem -Path '.\cfg' | 
	Foreach-Object{
		if(Test-Path -Path "$path\$_"){
			if((Get-FileHash "$path\$_").Hash -eq (Get-FileHash ".\cfg\$_").Hash){
				Write-Verbose "$path\$_ matches repository version"
			}
			else{
				Copy-Item "$path\$_" -Destination '.\cfg\cs1'
			}
		}
		else{
			Write-Error "$_ not found in user config files"
		}
	}
}
else{
	Write-Error "Steam userdata for $u not found in default directory"
}
