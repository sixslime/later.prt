#> later.prt:_/player/on_join
#--------------------
# @hook : onjoin:on_join
#--------------------

function later.prt:_/player/reg
scoreboard players add *joined_this_tick --later.prt 1 