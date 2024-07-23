#> later.prt:_/player/on_join
#--------------------
# @hook : onjoin:on_join
#--------------------

function later.prt:_/player/reg
scoreboard players add *joined_this_tick --later.prt 1 

function pdata:api/self/get
data modify storage later.prt:var join.tasks set from storage pdata:out get.result.storage.later-prt.halted_tasks

data modify storage pdata:in set.storage set from storage pdata:out get.result.storage
data modify storage pdata:in set.storage.later-prt.halted_tasks set value []
function pdata:api/self/set

execute if data storage later.prt:var join.tasks[] run function later.prt:_/player/each_reschedule

data remove storage later.prt:var join