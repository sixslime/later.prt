#> later.prt:_/detect_leave.1

data modify storage later.prt:var leave.current_players append value {}
execute store result storage later.prt:var leave.current_players[-1].index int 1 run scoreboard players get @s pdata-index