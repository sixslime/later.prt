#> later.prt:api > enable_for
#--------------------
# task_id: later:TaskId
#--------------------
# ...
#--------------------
#> enables player-relative time for the task with <task_id>.
#--------------------
#- shorthand for `data modify storage later:data tasks[{task_id:<task_id>}].prt set value true`
#--------------------
# 1 - success
# 0 - no task with <task_id> exists (task could have already been executed).
#--------------------

function later.prt:_/impl/enable_for/do with storage later.prt:in enable_for
data remove storage later.prt:in enable_for