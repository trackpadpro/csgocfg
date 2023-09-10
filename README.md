# csgocfg

You can use the bootstrap to place config and panorama files into their active directories:

```
powershell -ExecutionPolicy ByPass -File .\bootstrap.ps1 -u [all/SteamFriendCode] -pano [on/off] -path [] -cs2 [on/off]
```

By default, [all] users on the computer will have their config files replaced, CS2 files are [on], and the panorama background replacement is [off].

The path parameter uses the default ```C:\Program Files (x86)\Steam``` directory.

#

Alternatively, place .cfg files in: ```.\Steam\userdata\[SteamFriendCode]\730\local\cfg```.

#

You can use the following command to record your active config files to this repository:

```
powershell -ExecutionPolicy ByPass -File .\record.ps1 -u [] -path [] -cs2 [on/off]
```

The user parameter is not optional unless you are me.

The path parameter uses the default ```C:\Program Files (x86)\Steam``` directory.

#

```[SteamFriendCode]``` is a 9-digit token found in a Steam browser under Friends->Add a Friend.

#

CS2 settings currently stored in the auto exec file, including my personal crouch and all chat binds. 
