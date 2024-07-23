#> later.prt:_/player/on_register
#--------------------
# @hook : pdata:on_register
#--------------------

function pdata:api/self/get
data modify storage pdata:in set.storage set from storage pdata:out get.storage
data modify storage pdata:in set.storage.later-prt.halted_tasks set value []
function pdata:api/self/set