#>later.prt:_/load
#--------------------
# @PRE_LOAD
#--------------------

# load
scoreboard players set *later.prt load-status 1

#declare storage later.prt:var
#declare storage later.prt:in
#declare storage later.prt:out
#declare storage later.prt:data
#declare storage later.prt:hook
#declare storage later.prt:implement

# scoreboards
scoreboard objectives add -later.prt dummy
scoreboard objectives add --later.prt dummy
#scoreboard objectives add later.prt-scoreboard dummy

execute store result score *dxplayers --later.prt if entity @a
data modify storage later.prt:data _.players set value []
execute as @a run function later.prt:_/player/reg

# tick
schedule clear later.prt:_/tick
function later.prt:_/tick