#> later.prt:api > disable_for
#--------------------
# task_id: later:TaskId
#--------------------
# ...
#--------------------
#> disables player-relative-time for the task with <task_id>.
#--------------------
#- shorthand for `data remove storage later:data tasks[{task_id:<task_id>}].prt`
#--------------------
# 1 - success
# 0 - no task with <task_id> exists (task could have already been executed), or player-relative-time is not enabled for that task.
#--------------------

return run function later.prt:_/impl/disable_for/do with storage later.prt:in disable_for