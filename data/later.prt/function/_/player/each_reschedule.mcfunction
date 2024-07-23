#> later.prt:_/player/each_reschedule
#--------------------
# ./on_join
#--------------------

data modify storage later.prt:var join.this_halt set from storage later.prt:var join.tasks[-1]

data modify storage six:in guuid.UUID set from entity @s UUID
function six:api/meta/guuid

data modify storage later:in delay.selector set from storage six:out guuid.result
data modify storage later:in delay.command set from storage later.prt:var join.this_halt.task.command
data modify storage later:in delay.failsafe set from storage later.prt:var join.this_halt.task.failsafe
data modify storage later:in delay.data set from storage later.prt:var join.this_halt.task.data
data modify storage later:in delay.ticks set from storage later.prt:var join.this_halt.remaining_ticks

function later:api/delay
function later.prt:api/enable

data remove storage later.prt:var join.tasks[-1]
execute if data storage later.prt:var join.tasks[] run function later.prt:_/player/each_reschedule
