#> later.prt:uninstall

scoreboard objectives remove -later.prt
scoreboard objectives remove --later.prt

data remove storage later.prt:data _
data remove storage pdata:data players[].storage.later-prt

schedule clear later.prt:_/tick