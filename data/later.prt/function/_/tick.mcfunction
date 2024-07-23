#>later.prt:_/tick
#--------------------
# @PRE_TICK
#--------------------

schedule function later.prt:_/tick 1t

execute store result score *players --later.prt if entity @a
execute if score *players --later.prt < *dxplayers --later.prt run function later.prt:_/detect_change
scoreboard players operation *dxplayers --later.prt = *players --later.prt