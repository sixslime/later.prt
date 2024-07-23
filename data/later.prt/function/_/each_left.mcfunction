#> later.prt:_/each_left
#--------------------
# ./detect_leave    
#--------------------

data modify storage pdata:in get.index set from storage later.prt:var leave.left[-1].index
function pdata:api/index/get
data modify storage pdata:in set.storage set from storage pdata:out get.storage

function later.prt:_/each_left.1 with storage pdata:out get.result

data modify storage pdata:in set.index set from storage later.prt:var leave.left[-1].index
function pdata:api/index/set

data remove storage later.prt:var leave.left[-1]
execute if data storage later.prt:var leave.left[] run function later.prt:_/each_left