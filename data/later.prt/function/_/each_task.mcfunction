#> later.prt:_/each_task
#--------------------
# ./each_left.1    
#--------------------

data modify storage later.prt:var leave.halting.task set from storage later.prt:var leave.to_halt[-1]
execute store result score *leave.time -later.prt run data get storage later.prt:var leave.halting.task.time
execute store result score *leave.now_time -later.prt run time query gametime
scoreboard players operation *leave.time -later.prt -= *leave.now_time -later.prt
execute store result storage later.prt:var leave.halting.remaining_time int 1 run scoreboard players get *leave.time -later.prt

data modify storage pdata:in set.storage.later-prt._.halted_tasks append from storage later.prt:var leave.halting

data remove storage later.prt:var leave.to_halt[-1]
execute if data storage later.prt:var leave.to_halt[] run function later.prt:_/each_task