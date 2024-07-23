#> later.prt:_/each_left.1

$data modify storage pdata:in set.storage.later-prt._.halted_tasks append from storage later:data tasks[{prt:true, targets:[{UUID:$(UUID)}]}]
$data remove storage later:data tasks[{prt:true, targets:[{UUID:$(UUID)}]}]