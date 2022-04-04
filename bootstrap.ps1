param ($u='all', $pano='off')

if($u -eq 'all'){
	
}
else{
	Copy-Item -Filter *.cfg -Path '.\cfg\*' -Recurse -Destination "C:\Program Files (x86)\Steam\userdata\$u\730\local\cfg"
}

if($pano -eq 'on'){
	Copy-Item '.\pano\ancient.webm' -Destination 'C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\panorama\videos'
}
