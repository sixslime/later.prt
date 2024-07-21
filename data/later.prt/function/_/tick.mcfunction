#>later.prt:_/tick
#--------------------
# @PRE_TICK
#--------------------

schedule function later.prt:_/tick 1t

execute store result score *players --later.prt if entity @a
