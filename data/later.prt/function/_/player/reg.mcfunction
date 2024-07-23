#> later.prt:_/impl/player/reg
#--------------------
# _/load
#--------------------

execute store result storage later.prt:var reg.entry.index int 1 run scoreboard players get @s pdata-index
data modify storage later.prt:data _.players append from storage later.prt:var reg.entry
data remove storage later.prt:var reg