param($u='213770434', $path='C:\Program Files (x86)\Steam')

$path="$path\userdata\$u\730\local\cfg"

if(Test-Path -Path $path){
	Get-ChildItem -Path '.\cfg' | 
	Foreach-Object{
		if(Test-Path -Path "$path\$_"){
			if((Get-FileHash "$path\$_").Hash -eq (Get-FileHash ".\cfg\$_").Hash){
				Write-Verbose "$path\$_ matches repository version"
			}
			else{
				Copy-Item "$path\$_" -Destination '.\cfg'
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
