# csgocfg

If you have Steam and CSGO installed into their default directories, you can use the bootstrap:

```
powershell -ExecutionPolicy ByPass -File .\bootstrap.ps1 -u [all/SteamFriendCode] -pano [on/off]
```

By default, [all] users on the computer will have their config files replaced and the panorama background replacement is [off].

#

Place .cfg files in: ```.\Steam\userdata\[SteamFriendCode]\730\local\cfg``` where [SteamFriendCode] is a 9-digit token found in a Steam browser under Friends->Add a Friend.
