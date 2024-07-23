#> later.prt:_/each_left.1

$data modify storage later.prt:var leave.to_halt append from storage later:data tasks[{prt:true, targets:[{UUID:$(UUID)}]}]
$data remove storage later:data tasks[{prt:true, targets:[{UUID:$(UUID)}]}]