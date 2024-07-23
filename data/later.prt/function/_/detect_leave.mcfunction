#> later.prt:_/detect_leave
#--------------------
# ./tick
#--------------------

execute as @a run function later.prt:_/detect_leave.1
data modify storage six:in difference.a set from storage later.prt:var leave.current_players
data modify storage six:in difference.b set from storage later.prt:data _.players
function six:api/array/set/difference
data modify storage later.prt:var leave.left set from storage six:out difference.unique_b

execute if data storage later.prt:var leave.left[] run function later.prt:_/each_left

data modify storage later.prt:data _.players set from storage later.prt:var leave.current_players
data remove storage later.prt:var leave